import 'package:flutter/widgets.dart';
import 'package:flutter_project/screens/noti/notifyscreen.dart';
import 'package:flutter_project/screens/order/order_list.dart';
import 'package:flutter_project/screens/profile/components/chinh_sach_bao_mat.dart';
import 'package:flutter_project/screens/profile/components/dieukhoan_screen.dart';
import 'package:flutter_project/screens/profile/components/support_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/init_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  SupportTourScreen.routeName: (context) => const SupportTourScreen(),
  NotifyScreen.routeName: (context) => const NotifyScreen(),
  SupportScreen.routeName: (context) => const SupportScreen(),
  DieuKhoanScreen.routeName: (context) => const DieuKhoanScreen(),
  BaoMatScreen.routeName: (context) => const BaoMatScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
