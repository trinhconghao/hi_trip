import 'package:flutter/material.dart';
import 'custom_title.dart';
class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.press,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitle(
          title: title,
          subtitle: subtitle,
        ),
        TextButton(
          onPressed: press,
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: const Text("Xem thêm"),
        ),
      ],
    );
  }
}
