import 'package:clothes_ecommerce/app/account/view/forgot_password.dart';
import 'package:clothes_ecommerce/app/account/view/log_in.dart';
import 'package:clothes_ecommerce/app/account/view/sign_up.dart';
import 'package:clothes_ecommerce/app/base/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothes Ecommerce',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/splashScreen', page: () => const SplashScreen()),
        GetPage(name: '/logIn', page: () => const LogIn()),
        GetPage(name: '/signUp', page: () => const SignUp()),
        GetPage(name: '/forgotPassword', page: () => const ForgotPassword()),
      ],
    );
  }
}
