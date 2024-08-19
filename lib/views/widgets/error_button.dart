import 'package:flutter/material.dart';

class ErrorButton extends StatelessWidget {
  const ErrorButton({
    super.key,
    required this.onPressed,
    required this.child,
  });
  final void Function()? onPressed;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(foregroundColor: Colors.red),
        onPressed: onPressed,
        child: child);
  }
}
