import 'package:automatic_takeout_order/state/auth/user/user_state.dart';
import 'package:automatic_takeout_order/state/counter_state.dart';
import 'package:automatic_takeout_order/view/auth/auth_middleware.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'automatic_takeout_order',
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'Hiragino Kaku Gothic ProN',
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      home: MaterialApp(
        home: StateNotifierProvider<UserStateNotifier, UserState>(
          create: (_) => UserStateNotifier(),
          child: AuthMiddleWare(),
        ),
      ),
    );
  }
}
