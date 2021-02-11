import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:automatic_takeout_order/amplifyconfiguration.dart';
import 'package:automatic_takeout_order/view/middleware/auth/auth_middleware.dart';
import 'package:automatic_takeout_order/view/middleware/loading/amplify_loading_view.dart';
import 'package:flutter/material.dart';

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
    return _amplifyConfigured ? AuthMiddleWare() : AmplifyLoadingView();
  }

  /// Initialize Amplify
  Future<void> _configureAmplify() async {
    final authCognito = AmplifyAuthCognito();
    await Amplify.addPlugins([authCognito]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print('Amplify was already configured. Looks like app restarted on android.');
    }
    setState(() {
      _amplifyConfigured = true;
    });
  }
}
