import 'package:automatic_takeout_order/components/buttons/custom_circle_button.dart';
import 'package:automatic_takeout_order/view/non_authenticated/register_bottom_sheet.dart';
import 'package:flutter/material.dart';

class Startup extends StatelessWidget {
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
              onPressed: () async {
                final result = await showModalBottomSheet<int>(
                  context: context,
                  builder: (BuildContext context) {
                    return RegisterBottomSheet();
                  }
                );
                print(result);
              },
            ),
          ],
        ),
      ),
    );
  }
}