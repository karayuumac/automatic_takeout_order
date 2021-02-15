import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';

import '../../amplifyconfiguration.dart';

abstract class AmplifyApiInterface {
  void listen(List<HubChannel> channels,
      void Function(dynamic event) listener);

  Future<void> initializeAmplify();
}

class AmplifyApi extends AmplifyApiInterface {
  AmplifyApi._();

  @override
  void listen(List<HubChannel> channels,
      void Function(dynamic event) listener) {
    Amplify.Hub.listen(channels, listener);
  }

  @override
  Future<void> initializeAmplify() async {
    final authCognito = AmplifyAuthCognito();
    await Amplify.addPlugins([authCognito]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print('Amplify was already configured.');
    }
  }
}

final AmplifyApi amplifyApi = AmplifyApi._();