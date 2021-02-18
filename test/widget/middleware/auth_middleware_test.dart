import 'package:amplify_flutter/amplify.dart';
import 'package:automatic_takeout_order/api/amplify/amplify_api.dart';
import 'package:automatic_takeout_order/state/auth/user/auth_state.dart';
import 'package:automatic_takeout_order/view/authenticated/home_view.dart';
import 'package:automatic_takeout_order/view/middleware/auth/auth_middleware.dart';
import 'package:automatic_takeout_order/view/non_authenticated/stratup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

class MockAmplifyApi extends Mock implements AmplifyApiInterface {}

void main() {
  group('AuthMiddleware', () {
    test('should set "isAuthenticated" in UserState to true when signed in',
        () {
      final provider = AuthStateNotifier();

      listener(HubEvent('SIGNED_IN'), provider);
      expect(provider.isAuthenticated, true);
    });

    test('should set "isAuthenticated" in UserState to false when signed out',
        () {
      final provider = AuthStateNotifier();

      listener(HubEvent('SIGNED_OUT'), provider);
      expect(provider.isAuthenticated, false);
    });

    test(
        'should set "isAuthenticated"'
        ' in UserState to false when session expired', () {
      final provider = AuthStateNotifier();

      listener(HubEvent('SESSION_EXPIRED'), provider);
      expect(provider.isAuthenticated, false);
    });

    testWidgets('should go to StartupView Page when not authenticated',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: AuthMiddleWare(
              MockAmplifyApi(),
            ),
          ),
        ),
      );

      expect(find.byType(StartupView), findsOneWidget);
    });

    testWidgets('should go to HomeView Page when authenticated',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            authStateNotifierProvider.overrideWithValue(
              AuthStateNotifier.withDefaultValue(isAuthenticated: true),
            ),
          ],
          child: MaterialApp(
            home: AuthMiddleWare(
              MockAmplifyApi(),
            ),
          ),
        ),
      );

      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
