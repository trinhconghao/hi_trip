import 'package:flutter/material.dart';
import 'hex_color.dart';
//const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryColor = Color(0xFFF3692A);//#4CA467
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Colors.black;
const kTextGrayColor = Colors.grey;
const kAnimationDuration = Duration(milliseconds: 200);
const  double verticalPadding = 10;
const double horizontalPadding = 15;
const double borderCorner = 10;
const headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Hãy nhập địa chỉ email của bạn";
const String kInvalidEmailError = "Điạ chỉ email chưa đúng";
const String kPassNullError = "Hãy nhập mật khẩu";
const String kShortPassError = "Mật khẩu quá ngắn";
const String kMatchPassError = "Mật khẩu chưa chính xác";
const String kNamelNullError = "Hãy nhập tên của bạn";
const String kPhoneNumberNullError = "Hãy nhập số điện thoại của bạn";
const String kAddressNullError = "Hãy nhập địa chỉ của bạn";

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: kTextColor),
  );
}
