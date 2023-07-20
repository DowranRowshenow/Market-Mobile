import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:market/components/scroll_behavior.dart';
import 'package:market/routes.dart';
import 'package:market/screens/home/home_screen.dart';
import 'package:market/storage.dart';
import 'package:market/theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Storage.loadUser();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: HomeScreen.routeName,
      routes: routes,
      // Use this block to remove all scroll glow effects
      builder: (context, child) {
        return ScrollConfiguration(
            behavior: GlowlessScrollBehavior(), child: child!);
      },
    );
  }
}
