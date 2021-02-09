import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.color = Colors.blue,
    this.margin,
  }) : super(key: key);

  final Widget child;
  final Color color;
  final EdgeInsetsGeometry margin;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
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

class CustomCircleIconButton extends StatelessWidget {
  const CustomCircleIconButton({
    Key key,
    @required this.label,
    @required this.onPressed,
    @required this.icon,
    this.color = Colors.blue,
    this.margin,
  }) : super(key: key);

  final Widget label;
  final Color color;
  final Icon icon;
  final EdgeInsetsGeometry margin;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(8),
      child: ButtonTheme(
        height: 60,
        minWidth: double.infinity,
        child: RaisedButton.icon(
          icon: icon,
          label: label,
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
