import 'package:flutter/widgets.dart';
import 'package:market/screens/cart/cart_screen.dart';
import 'package:market/screens/complete_profile/complete_profile_screen.dart';
import 'package:market/screens/details/details_screen.dart';
import 'package:market/screens/home/home_screen.dart';
import 'package:market/screens/login_success/login_success_screen.dart';
import 'package:market/screens/otp/otp_screen.dart';
import 'package:market/screens/profile/profile_screen.dart';
import 'package:market/screens/search/search_screen.dart';
import 'package:market/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  SearchScreen.routeName: (context) => const SearchScreen(),
};

void pushRoute(BuildContext context, String routeName){
  if (ModalRoute.of(context)?.settings.name != routeName) {
    Navigator.pushNamed(context, routeName);
  }
}