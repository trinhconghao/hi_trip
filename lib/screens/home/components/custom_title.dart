import 'package:flutter/material.dart';

class CustomTitle  extends StatelessWidget {
  const CustomTitle ({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
       // SizedBox(height: 8.0),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
