import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? customPadding;

  const BaseContainer({super.key, this.child, this.customPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.3),
        color: const Color(0xFFe6F0Fa),
      ),
      padding: customPadding ?? const EdgeInsets.all(3.0),
      child: child,
    );
  }
}
