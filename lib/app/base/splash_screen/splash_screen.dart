import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/logIn');
    });

    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('Welcome',style: TextStyle(fontSize: 40,color: Colors.white)),
      ),
    );
  }
}
