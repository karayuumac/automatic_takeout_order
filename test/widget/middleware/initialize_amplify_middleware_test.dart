import 'package:automatic_takeout_order/api/amplify/amplify_api.dart';
import 'package:automatic_takeout_order/view/middleware/amplify/initialize_amplify_middleware.dart';
import 'package:automatic_takeout_order/view/middleware/auth/auth_middleware.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

class MockAmplifyApi extends Mock implements AmplifyApiInterface {}

void main() {
  group('InitializeAmplifyMiddleware', () {
    testWidgets('LoadingView should be seen during configuration',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: InitializeAmplifyMiddleware(
            amplifyApi: MockAmplifyApi(),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text('初期化中... 少々お待ちください'), findsOneWidget);
    });

    testWidgets('should go to AuthMiddleWare Page when initialized',
        (WidgetTester tester) async {
      final mockAmplifyApi = MockAmplifyApi();
      when(mockAmplifyApi.initializeAmplify())
          .thenAnswer((_) => Future.delayed(const Duration(microseconds: 0)));

      await tester.pumpWidget(
        MaterialApp(
          home: ProviderScope(
            child: InitializeAmplifyMiddleware(
              amplifyApi: mockAmplifyApi,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(AuthMiddleWare), findsOneWidget);
    });
  });
}
