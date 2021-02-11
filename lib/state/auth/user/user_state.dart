import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @Default(false) bool isAuthenticated,
    @Default('') String uid
  }) = _UserState;
}

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier() : super(const UserState());

  void setUser({bool isAuthenticated, String uid}) {
    state = state.copyWith(isAuthenticated: isAuthenticated, uid: uid);
  }

  bool isAuthenticated() {
    return state.isAuthenticated;
  }

  String getUid() {
    return state.uid;
  }
}