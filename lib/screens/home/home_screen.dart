import 'package:flutter/material.dart';
import 'package:market/components/coustom_bottom_nav_bar.dart';
import 'package:market/enums.dart';
import 'package:market/screens/home/components/home_header.dart';
import 'package:market/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getProportionateScreenHeight(70),
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        title: const HomeHeader(),
        actions: const [],
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

class SilverAppBar extends AppBar {
  SilverAppBar({Key? key, Widget? title}) : super(key: key, title: title);

  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Silver App Bar"),
      backgroundColor: Colors.grey,
      elevation: 0.0,
      leading: Container(),
    );
  }
}
