import 'package:automatic_takeout_order/state/auth/user/user_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserState testing', () {
    test('it should be initialized appropriately', () {
      const userState = UserState();
      expect(userState.isAuthenticated, false);
      expect(userState.uid, '');
    });
  });

  group('UserStateNotifier testing', () {
    test('it should be initialized appropriately', () {
      final userStateNotifier = UserStateNotifier();
      expect(userStateNotifier.isAuthenticated(), false);
      expect(userStateNotifier.getUid(), '');
    });

    test('setUser can set User data', () {
      final userStateNotifier = UserStateNotifier()
        ..setUser(isAuthenticated: true, uid: 'test');
      expect(userStateNotifier.isAuthenticated(), true);
      expect(userStateNotifier.getUid(), 'test');
    });
  });
}