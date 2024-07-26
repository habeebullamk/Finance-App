import 'package:finance_app_provider/constants/colors.dart';
import 'package:finance_app_provider/models/user_model.dart';
import 'package:finance_app_provider/screens/login_page.dart';
import 'package:finance_app_provider/screens/register.dart';
import 'package:finance_app_provider/screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());

  
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldcolor,
          textTheme: TextTheme(
              displaySmall: TextStyle(color: Colors.white, fontSize: 18))),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        'login': (context) => LoginPage(),
        'register':(context) => RegisterPage()
      },
    );
  }
}
