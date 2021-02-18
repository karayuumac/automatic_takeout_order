import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthenticated
  }) = _AuthState;
}

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier() : super(const AuthState());

  AuthStateNotifier.withDefaultValue({@required bool isAuthenticated})
      : super(AuthState(isAuthenticated: isAuthenticated));

  set isAuthenticated(bool authenticationState) {
    state = state.copyWith(isAuthenticated: authenticationState);
  }

  bool get isAuthenticated {
    return state.isAuthenticated;
  }
}