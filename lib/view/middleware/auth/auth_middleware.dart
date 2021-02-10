import 'package:automatic_takeout_order/state/auth/user/user_state.dart';
import 'package:automatic_takeout_order/view/authenticated/home.dart';
import 'package:automatic_takeout_order/view/non_authenticated/stratup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthMiddleWare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      context.watch<UserStateNotifier>().setUser(
            isAuthenticated: true,
            uid: user.uid,
          );
      return Home();
    } else {
      return Startup();
    }
  }
}
