import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.color = Colors.blue,
  }) : super(key: key);

  final Widget child;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: ButtonTheme(
        height: 60,
        minWidth: double.infinity,
        child: RaisedButton(
          child: child,
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
