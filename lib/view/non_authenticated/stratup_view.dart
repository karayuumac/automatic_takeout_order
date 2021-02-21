import 'package:automatic_takeout_order/components/buttons/custom_circle_button.dart';
import 'package:automatic_takeout_order/constants/keys.dart';
import 'package:automatic_takeout_order/view/non_authenticated/register_bottom_sheet.dart';
import 'package:flutter/material.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Center(
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
                  key: Keys.start,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  await showModalBottomSheet<int>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return RegisterBottomSheet();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}