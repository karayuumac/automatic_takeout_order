import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('あいうえお'),
      ),
      body: const Center(
        child: Text('ログインできたよ'),
      ),
    );
  }
}