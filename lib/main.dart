import 'package:flutter/material.dart';
import 'package:logins/home.dart';
import 'package:logins/profile_page.dart';
import 'package:logins/splash_screen.dart';
import 'package:logins/widgets/icon_containers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(useMaterial3: true,),
      debugShowCheckedModeBanner: false,
      title: 'UBL UI',
            home:ProfilePage(),
            //HomeScreen(),
            //SplashScreen(),
      //SplashScreen(),
    );
  }
}
