import 'package:automatic_takeout_order/components/buttons/custom_circle_button.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text(
              'ようこそ！',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('気軽に持ち帰り予約ができるサービス'),
            const Spacer(),
            const Divider(),
            CustomCircleButton(
              child: const Text(
                'はじめる',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}