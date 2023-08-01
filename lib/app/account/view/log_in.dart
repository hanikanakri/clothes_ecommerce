import 'package:clothes_ecommerce/app/account/controller/login_controller.dart';
import 'package:clothes_ecommerce/app/account/model/log_in_model.dart';
import 'package:clothes_ecommerce/app/base/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    LogInController controller = Get.put(LogInController());

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: controller.formState,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomPaint(
                size: size,
                painter: RPSCustomPainter1(),
              ),
              CustomPaint(
                size: size,
                painter: RPSCustomPainter3(),
              ),
              CustomPaint(
                size: size,
                painter: RPSCustomPainter(),
              ),
              const Positioned(
                top: 155,
                left: 60,
                child: Text(
                  'Welcome\nBack',
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Email
              Positioned(
                top: 400,
                left: 40,
                width: size.width * 0.77,
                child: myTextFormField(
                    controller: controller.emailController,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Email address is required';
                      } else if (!value.contains('@')) {
                        return 'Email is invalid';
                      }
                      return null;
                    },
                    labelText: 'Email Address',
                    widget: const Icon(
                      Icons.email,
                    ),
                ),
                // TextFormField(
                //   controller: controller.emailController,
                //   keyboardType: TextInputType.visiblePassword,
                //   cursorColor: Colors.black,
                //   decoration: InputDecoration(
                //     focusColor: Colors.black,
                //     labelText: "Email Address",
                //     iconColor: Colors.black,
                //     suffixIcon: GestureDetector(
                //       onTap: (){},
                //       child: const Icon(Icons.email),
                //     ),
                //     hintStyle: const TextStyle(
                //       color: Color.fromARGB(255, 182, 182, 179),
                //     ),
                //   ),
                //   validator: (value) {
                //     if (value!.isEmpty) {
                //       return 'password is required';
                //     } else if (value.length < 6) {
                //       return 'Password must have more than 6 letters';
                //     }
                //     return null;
                //   },
                // ),
              ),
              //password
              Positioned(
                top: 500,
                left: 40,
                width: size.width * 0.77,
                child: GetBuilder<LogInController>(
                  builder: (logic) {
                    return
                      myTextFormField(
                      controller: controller.passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'password is required';
                        } else if (value.length < 6) {
                          return 'password must have more than 6 letters';
                        }
                        return null;
                      },
                      obscureText: controller.obscureText,
                      labelText: 'Password',
                      hintColor: const Color.fromARGB(255, 182, 182, 179),
                      widget: GestureDetector(
                        onTap: () {
                          controller.showPassword();
                          debugPrint('kkkkkkkkkkkkkkkkkkkkkk');
                          debugPrint(controller.passwordController.toString());
                        },
                        child: Icon(
                          controller.obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Positioned(
                top: 662,
                left: 40,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 41, 47, 56)),
                ),
              ),
              Positioned(
                top: 648,
                left: 285,
                child: ElevatedButton(
                  onPressed: () {
                    controller.formState.currentState!.validate();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color.fromARGB(255, 79, 84, 96),
                  ),
                  child: const Icon(Icons.arrow_forward),
                ),
              ),
              Positioned(
                top: 750,
                left: 40,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/signUp');
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 41, 47, 56)),
                  ),
                ),
              ),
              Positioned(
                top: 750,
                left: 250,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('forgotPassword');
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 41, 47, 56)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
