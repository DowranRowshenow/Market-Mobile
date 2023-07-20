import 'package:flutter/material.dart';
import 'package:market/components/coustom_bottom_nav_bar.dart';
import 'package:market/enums.dart';
import 'package:market/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);

    bool _pinned = true;
    bool _snap = false;
    bool _floating = false;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const Body(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
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
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Do something
          },
        ),
      ],
    );
  }
}
