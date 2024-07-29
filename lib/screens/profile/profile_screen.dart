import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'components/profile_menu.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
              },
              child: Container(
                width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg_home.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
                  child:const Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/icons/icon_acount.png"),
                            // AssetImage("assets/icons/icon_acount.png"),
                          ),
                          const SizedBox(width: 20),
                          Expanded(child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nguyễn Hải Long",
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Text(
                                "+84 99 66 4444",
                                //style: Theme.of(context).textTheme.titleLarge,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 10),
                Text('Thông tin Tour', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/tiepnhan.svg",
                        width: 35,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Tiếp nhận",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/choxuly.svg",
                        width: 35,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Chờ xử lý",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/danhsach.svg",
                        width: 35,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Danh sách",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),

            ProfileMenu(
              text: "Hỗ trợ",
              icon: "assets/icons/support.svg",
              press: () {
              },
            ),

            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),

            ProfileMenu(
              text: "Địa chỉ nhận hàng",
              icon: "assets/icons/Group 8205.svg",
              width: 22,
              press: () {
              },
            ),

            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),

            ProfileMenu(
              text: "Thông tin thanh toán",
              icon: "assets/icons/Group 8267.svg",
              width: 22,
              press: () {
              },
            ),

            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),

            ProfileMenu(
              text: "Điều khoản điều kiện",
              icon: "assets/icons/dieukhoan.svg",
              press: () {
              },
            ),

            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),

            ProfileMenu(
              text: "Chính sách bảo mật",
              icon: "assets/icons/ChinhSachbaoMat.svg",
              press: () {
              },
            ),

            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
