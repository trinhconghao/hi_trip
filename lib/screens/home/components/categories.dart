
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';
class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Button(
                      icon: 'assets/images/Mask Group 79.png',
                      text: "Đặt Tour",
                    ),
                  ),
                  Expanded(
                    child: Button(
                      icon: 'assets/images/Mask Group 78.png',
                      text: "Khách sạn",
                    ),
                  ),
                  Expanded(
                    child: Button(
                      icon: 'assets/images/Mask Group 77.png',
                      text: "May Bay",
                    ),
                  ),
                  Expanded(
                    child: Button(
                      icon: 'assets/images/Mask Group 76.png',
                      text: "Xe Bus",
                    ),
                  ),
                  Expanded(
                    child: Button(
                      icon: 'assets/images/Mask Group 75.png',
                      text: "Sim Travel",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );

  }
}

class PhoneNumberService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> getPhoneNumber() async {
    try {
      DocumentSnapshot snapshot = await _firestore.collection('hotline').doc('hotline').get();
      if (snapshot.exists) {
        return snapshot.get('sdt'); // Đảm bảo rằng trường này tồn tại trong Firestore
      } else {
        throw 'Document does not exist';
      }
    } catch (e) {
      throw 'Error getting phone number: $e';
    }
  }
}

class Button extends StatefulWidget {
  final String icon, text;
  const Button({super.key, required this.icon, required this.text});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  final PhoneNumberService _phoneNumberService = PhoneNumberService();
  String? _phoneNumber;

  @override
  void initState() {
    super.initState();
    _fetchPhoneNumber();
  }

  void _fetchPhoneNumber() async {
    try {
      String phoneNumber = await _phoneNumberService.getPhoneNumber();
      setState(() {
        _phoneNumber = phoneNumber;
      });
    } catch (e) {
      // Handle the error appropriately
      print(e);
    }
  }

  void _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not call $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    const Text(
                      'Gọi hỗ trợ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Gọi hỗ trợ đặt tour',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 40),
                    GestureDetector(
                      onTap: () {
                        if (_phoneNumber != null) {
                          _makePhoneCall(_phoneNumber!);
                        }
                      },
                      child: Column(
                        children: [
                          const Text(
                            'Hotline',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (_phoneNumber != null)
                            Text(
                              _phoneNumber!,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Đóng",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Column(
        children: [
          Image.asset(
            widget.icon,
            width: 100,
          ),
          const SizedBox(height: 5),
          Text(
            widget.text,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}



