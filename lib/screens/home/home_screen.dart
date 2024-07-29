import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/categories.dart';
import 'components/content.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg_home.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.only(left: 20),
                child:const Column(
                  children: [
                    SizedBox(height: 40),
                    HomeHeader(),
                  ],
                )
            ),

            Container(
              color: Colors.white,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DiscountBanner(),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              color:Colors.white,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Categories(),
                ],
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text("Dành riêng cho bạn", style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("Ưu đãi dành riêng cho bạn", style: TextStyle(
                        fontSize: 12.5,
                      )),
                    ],
                  ),
                ),
              ],
            ),

            Content()
          ],
        ),
      ),
    );
  }
}

