import 'package:automatic_takeout_order/components/buttons/custom_circle_button.dart';
import 'package:automatic_takeout_order/constants/keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';

class RegisterView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'メールアドレスを入力',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: const Text(
                    'メールアドレスで登録',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: const Text('メールアドレスを入力してください。'),
                ),
                Form(
                  key: Keys.registerForm,
                  child: Column(
                    children: [
                      _emailFormField(_emailController),
                      _passwordFormField(_passwordController),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomCircleButton(
                child: const Text(
                  '次へ',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (Keys.registerForm.currentState.validate()) {
                    print('OK!');
                  } else {
                    print('NG!');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _emailFormField(TextEditingController emailController) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: emailController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'メールアドレス',
        ),
        validator: ValidationBuilder()
            .email('有効なメールアドレスを入力してください')
            .required('メールアドレスは入力必須です')
            .build(),
      ),
    );
  }

  TextFormField _passwordFormField(TextEditingController passwordController) {
    return TextFormField(
      controller: passwordController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'パスワード',
      ),
      maxLength: 20,
      obscureText: true,
      validator: ValidationBuilder()
          .required('パスワードは入力必須です')
          .minLength(8, 'パスワードは8文字以上で入力してください')
          .maxLength(20, 'パスワードは20文字以下で入力してください')
          .build(),
    );
  }
}
