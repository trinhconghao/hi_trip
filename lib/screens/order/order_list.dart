import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class SupportTourScreen extends StatelessWidget {
  static String routeName = "/supp";
  const SupportTourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.microtask(() => _showAlertDialog(context));
    return Scaffold();
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Thiết lập borderRadius = 10
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
                const Text(
                  'Hotline',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '19009335',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Đóng hộp thoại
                Navigator.of(context).pop();
                Navigator.pushNamed(context, HomeScreen.routeName);
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
  }
}