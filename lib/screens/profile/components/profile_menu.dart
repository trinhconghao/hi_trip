import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
    this.width,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: TextButton(
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: width,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
