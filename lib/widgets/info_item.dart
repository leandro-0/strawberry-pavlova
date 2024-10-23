import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  final IconData iconData;
  final String text;
  final String subtitle;

  const InfoItem({
    super.key,
    required this.iconData,
    required this.text,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          color: const Color(0xff6bcba4),
        ),
        const SizedBox(height: 4.0),
        Text(
          '${text.toUpperCase()}:',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          subtitle,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
