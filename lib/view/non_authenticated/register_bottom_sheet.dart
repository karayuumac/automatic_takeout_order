import 'package:automatic_takeout_order/components/buttons/custom_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Spacer(),
              Container(
                margin: const EdgeInsets.all(8),
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.blue,
                    shape: CircleBorder(),
                  ),
                  child: CloseButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              )
            ],
          ),
          const Text(
            'まずは登録！',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '登録することで持ち帰り予約ができます',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Divider(),
          CustomCircleIconButton(
            label: const Text(
              'メールアドレスで登録',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            color: Colors.blue,
            icon: const Icon(
              Icons.mail_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/register');
            },
          ),
          CustomCircleIconButton(
            margin: const EdgeInsets.only(bottom: 8),
            label: const Text(
              'ログインはこちら',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            color: Colors.green,
            icon: const Icon(
              FontAwesomeIcons.signInAlt,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const Divider(),
          CustomCircleButton(
            margin: const EdgeInsets.only(top: 8),
            child: const Text(
              'ゲストとしてアプリを利用してみる',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            color: Colors.lightBlue[100],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
