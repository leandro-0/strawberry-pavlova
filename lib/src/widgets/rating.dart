import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int stars;

  const Rating({super.key, required this.stars})
      : assert(stars >= 0 && stars <= 5);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < stars; i++)
          const Icon(
            Icons.star,
            color: Colors.black,
          ),
        for (var i = 0; i < 5 - stars; i++)
          const Icon(
            Icons.star_border,
            color: Color(0xFF67717B),
          ),
      ],
    );
  }
}
