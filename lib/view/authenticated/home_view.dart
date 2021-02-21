import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('あいうえお'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Amplify.Auth.signOut();
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('ログインできたよ'),
      ),
    );
  }
}
