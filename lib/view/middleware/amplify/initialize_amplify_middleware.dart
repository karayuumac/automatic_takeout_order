import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:automatic_takeout_order/amplifyconfiguration.dart';
import 'package:automatic_takeout_order/state/auth/user/user_state.dart';
import 'package:automatic_takeout_order/view/middleware/auth/auth_middleware.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

class InitializeAmplifyMiddleware extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InitializeAmplifyMiddlewareState();
  }
}

class InitializeAmplifyMiddlewareState
  extends State<InitializeAmplifyMiddleware> {
  bool _amplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<UserStateNotifier, UserState>(
      create: (_) => UserStateNotifier(),
      child: AuthMiddleWare(),
    );
  }

  /// Initialize Amplify
  Future<void> _configureAmplify() async {
    //final analyticsPinpoint = AmplifyAnalyticsPinpoint();
    final authCognito = AmplifyAuthCognito();
    await Amplify.addPlugins([/* analyticsPinpoint, */ authCognito]);

    await Amplify.configure(amplifyconfig);
    setState(() {
      _amplifyConfigured = true;
    });
  }
}