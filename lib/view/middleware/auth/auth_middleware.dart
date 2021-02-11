import 'package:amplify_flutter/amplify.dart';
import 'package:automatic_takeout_order/state/auth/user/user_state.dart';
import 'package:automatic_takeout_order/view/authenticated/home_view.dart';
import 'package:automatic_takeout_order/view/non_authenticated/stratup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userStateNotifierProvider =
  StateNotifierProvider((_) => UserStateNotifier());

class AuthMiddleWare extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final provider = useProvider(userStateNotifierProvider);

    Amplify.Hub.listen([HubChannel.Auth], (dynamic event) {
      switch ((event as HubEvent).eventName) {
        case 'SIGNED_IN':
          {
            provider.setUser(isAuthenticated: true);
            break;
          }
        case 'SIGNED_OUT':
          {
            provider.setUser(isAuthenticated: false);
            break;
          }
        case 'SESSION_EXPIRED':
          {
            provider.setUser(isAuthenticated: false);
            break;
          }
      }
    });
    if (provider.isAuthenticated()) {
      return HomeView();
    } else {
      return StartupView();
    }
  }
}
