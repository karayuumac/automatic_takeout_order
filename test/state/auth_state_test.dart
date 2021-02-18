import 'package:automatic_takeout_order/state/auth/user/auth_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserState testing', () {
    test('it should be initialized appropriately', () {
      const userState = AuthState();
      expect(userState.isAuthenticated, false);
    });
  });

  group('UserStateNotifier testing', () {
    test('it should be initialized appropriately', () {
      final authStateNotifier = AuthStateNotifier();
      expect(authStateNotifier.isAuthenticated, false);

      final authStateNotifierWithDefaultValue =
          AuthStateNotifier.withDefaultValue(isAuthenticated: true);
      expect(authStateNotifierWithDefaultValue.isAuthenticated, true);
    });

    test('setUser can set User data', () {
      final userStateNotifier = AuthStateNotifier()
        ..isAuthenticated = true;
      expect(userStateNotifier.isAuthenticated, true);
    });
  });
}
