import 'package:amplify_flutter/amplify.dart';
import 'package:automatic_takeout_order/api/amplify/amplify_api.dart';
import 'package:automatic_takeout_order/state/auth/user/auth_state.dart';
import 'package:automatic_takeout_order/view/authenticated/home_view.dart';
import 'package:automatic_takeout_order/view/non_authenticated/stratup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authStateNotifierProvider =
    StateNotifierProvider((_) => AuthStateNotifier());

void listener(dynamic event, AuthStateNotifier stateNotifier) {
  switch ((event as HubEvent).eventName) {
    case 'SIGNED_IN':
      {
        stateNotifier.isAuthenticated = true;
        break;
      }
    case 'SIGNED_OUT':
      {
        stateNotifier.isAuthenticated = false;
        break;
      }
    case 'SESSION_EXPIRED':
      {
        stateNotifier.isAuthenticated = false;
        break;
      }
    default:
      print('This branch should not be reached! (auth_middleware#listener)');
  }
}

class AuthMiddleWare extends HookWidget {
  const AuthMiddleWare(this.amplifyApi);

  final AmplifyApiInterface amplifyApi;

  @override
  Widget build(BuildContext context) {
    final authStateNotifier = useProvider(authStateNotifierProvider);

    amplifyApi.listen(
      [HubChannel.Auth],
      (dynamic event) => listener(event, authStateNotifier),
    );

    if (authStateNotifier.isAuthenticated) {
      return HomeView();
    } else {
      return StartupView();
    }
  }
}
