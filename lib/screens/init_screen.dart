import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/screens/home/home_screen.dart';
import 'package:flutter_project/screens/profile/profile_screen.dart';
import 'noti/notifyscreen.dart';
import 'order/order_list.dart';

const Color inActiveIconColor = Color(0xFFBBBBBB);
const Color btt = Color(0xFFF3692A);
const Color select = Color(0xFFFFFFFF);
const Color selec = Color(0xFFFCC31C);

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  static String routeName = "/";

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  int currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    const HomeScreen(),
    const SupportTourScreen(),
    const NotifyScreen(),
    const ProfileScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: updateCurrentIndex,
        currentIndex: currentSelectedIndex,
        selectedLabelStyle: const TextStyle(
          color: inActiveIconColor,
        ),
        selectedItemColor:select,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: inActiveIconColor,
        type: BottomNavigationBarType.fixed,
        backgroundColor: btt,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/trang_chu_icon.svg",
              colorFilter: const ColorFilter.mode(
                inActiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/trang_chu_icon.svg",
              colorFilter: const ColorFilter.mode(
                select,
                BlendMode.srcIn,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/cart-shopping-svgrepo-com.svg",
              colorFilter: const ColorFilter.mode(
                inActiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/cart-shopping-svgrepo-com.svg",
              colorFilter: const ColorFilter.mode(
                select,
                BlendMode.srcIn,
              ),
            ),
            label: "Hỗ trợ Tour",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/time-svgrepo-com.svg",
              colorFilter: const ColorFilter.mode(
                inActiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/time-svgrepo-com.svg",
              colorFilter: const ColorFilter.mode(
                select,
                BlendMode.srcIn,
              ),
            ),
            label: "Thông báo",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/tai_khoan_icon.svg",
              colorFilter: const ColorFilter.mode(
                inActiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/tai_khoan_icon.svg",
              colorFilter: const ColorFilter.mode(
                select,
                BlendMode.srcIn,
              ),
            ),
            label: "Tài khoản",

          ),
        ],
      ),
    );
  }
}
