import 'package:flutter/material.dart';

class AmplifyLoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 16,
              ),
              child: const CircularProgressIndicator(),
            ),
            const Text('初期化中... 少々お待ちください')
          ],
        ),
      ),
    );
  }
}
