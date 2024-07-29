import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(
      "assets/images/logo_text_white.svg",

    );
      /*
      Image.asset(
      'assets/images/logo_header.png',
      //width: 100.0, // Điều chỉnh kích thước của logo theo ý muốn
      height: 100.0,
    );

       */
    /*
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child:  Image.asset(
            'assets/images/logo_header.png',
            //width: 100.0, // Điều chỉnh kích thước của logo theo ý muốn
            height: 100.0,
          ),
        ),

      ],
    );

     */
  }
}

const searchOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);
