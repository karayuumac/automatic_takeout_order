import 'package:automatic_takeout_order/api/amplify/amplify_api.dart';
import 'package:automatic_takeout_order/view/middleware/auth/auth_middleware.dart';
import 'package:automatic_takeout_order/view/middleware/loading/amplify_loading_view.dart';
import 'package:flutter/material.dart';

class InitializeAmplifyMiddleware extends StatefulWidget {
  const InitializeAmplifyMiddleware({Key key, @required this.amplifyApi})
      : super(key: key);

  final AmplifyApiInterface amplifyApi;

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
    return _amplifyConfigured
        ? AuthMiddleWare(widget.amplifyApi)
        : AmplifyLoadingView();
  }

  /// Initialize Amplify
  Future<void> _configureAmplify() async {
    await widget.amplifyApi.initializeAmplify();
    setState(() {
      _amplifyConfigured = true;
    });
  }
}
