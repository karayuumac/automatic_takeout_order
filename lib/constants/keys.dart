import 'package:flutter/material.dart';

class Keys {
  Keys._();

  static const start = Key('start');
  static const registerByEmail = Key('registerByEmail');

  static final registerForm = GlobalKey<FormState>(debugLabel: 'registerForm');
}