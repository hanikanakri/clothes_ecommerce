import 'package:clothes_ecommerce/app/account/controller/sign_up_controller.dart';
import 'package:clothes_ecommerce/app/account/model/sign_up_model.dart';
import 'package:clothes_ecommerce/app/base/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SignUpController controller = Get.put(SignUpController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 82, 87, 96),
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 82, 87, 96),
            elevation: 0,
          ),
          onPressed: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_sharp),
        ),
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: controller.key1,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomPaint(
                size: size,
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter1(),
              ),
              CustomPaint(
                size: size,
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
              const Positioned(
                top: 145,
                left: 45,
                child: Text(
                  'Create\nAccount',
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              ///userName
              Positioned(
                top: 250,
                left: 45,
                width: size.width * 0.76,
                child:
                myTextFormField(
                  controller: controller.userNameController,
                  errorColor: Colors.black,
                  enabledBorderColor: Colors.white,
                  type: TextInputType.name,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'User Name is required';

                    }
                    return null;
                  },
                  labelText: 'User Name',
                  labelColor: Colors.white,
                  widget: const Icon(
                    Icons.person,color: Colors.white,
                  ),
                ),


                // TextFormField(
                //   //  controller: controller.emailController,
                //   keyboardType: TextInputType.text,
                //   cursorColor: Colors.black,
                //   decoration: const InputDecoration(
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.white),
                //     ),
                //     focusColor: Colors.black,
                //     labelText: 'User Name',
                //     labelStyle: TextStyle(color: Colors.white),
                //     iconColor: Colors.black,
                //     suffixIcon: Icon(
                //       Icons.person,
                //       color: Colors.white,
                //     ),
                //     helperMaxLines: 2,
                //     hintStyle: TextStyle(
                //       color: Color.fromARGB(255, 182, 182, 179),
                //     ),
                //   ),
                //   validator: (value) {
                //     if (value!.isEmpty) {
                //       return 'User Name is required';
                //     } else if (value.length < 6) {
                //       return 'User Name must have more than 6 letters';
                //     }
                //     return null;
                //   },
                // ),


              ),

              ///Email
              Positioned(
                top: 350,
                left: 45,
                width: size.width * 0.76,
                child:

                myTextFormField(
                  controller: controller.emailController,
                  errorColor: Colors.black,
                  type: TextInputType.emailAddress,
                  enabledBorderColor: Colors.white,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Email Address is required';
                    } else if (!value.contains('@')) {
                      return 'Email is invalid';
                    }
                    return null;
                  },
                  labelText: 'Email',
                  labelColor: Colors.white,
                  widget: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),


                // TextFormField(
                //   controller: controller.emailController,
                //   keyboardType: TextInputType.emailAddress,
                //   cursorColor: Colors.black,
                //   decoration: const InputDecoration(
                //     focusColor: Colors.black,
                //     labelText: 'Email',
                //     labelStyle: TextStyle(color: Colors.white),
                //     iconColor: Colors.black,
                //     suffixIcon: Icon(
                //       Icons.email,
                //       color: Colors.white,
                //     ),
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.white,
                //       ),
                //     ),
                //     helperMaxLines: 2,
                //     hintStyle: TextStyle(
                //       color: Color.fromARGB(255, 182, 182, 179),
                //     ),
                //   ),
                // ),


              ),

              ///password
              Positioned(
                top: 450,
                left: 45,
                width: size.width * 0.76,
                height: 100,
                child: GetBuilder<SignUpController>(builder: (logic) {
                  return myTextFormField(
                    controller: controller.passwordController,
                    labelColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    errorColor: Colors.black,
                    cursorColor: Colors.white,
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
                        controller.showText();
                        debugPrint('kkkkkkkkkkkkkkkkkkkkkk');
                        debugPrint(controller.passwordController.toString());
                      },
                      child: Icon(
                        controller.obscureText
                            ? Icons.visibility_off
                            : Icons.visibility,color: Colors.white,
                      ),
                    ),
                  );





                  //   TextFormField(
                  //   //  controller: controller.emailController,
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return 'Password is required';
                  //     } else if (value.length < 6) {
                  //       return 'Password must have more than 6 letters';
                  //     }
                  //     return null;
                  //   },
                  //   keyboardType: TextInputType.visiblePassword,
                  //   cursorColor: Colors.black,
                  //   obscureText: controller.obscureText,
                  //   decoration: InputDecoration(
                  //     focusColor: Colors.black,
                  //     labelText: 'Password',
                  //     enabledBorder: const UnderlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.white),
                  //     ),
                  //     labelStyle: const TextStyle(color: Colors.white),
                  //     suffixIcon: GestureDetector(
                  //       onTap: () {
                  //         controller.showText();
                  //       },
                  //       child: Icon(
                  //         controller.obscureText
                  //             ? Icons.visibility_off
                  //             : Icons.visibility,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     helperMaxLines: 2,
                  //     hintStyle: const TextStyle(
                  //       color: Color.fromARGB(255, 182, 182, 179),
                  //     ),
                  //   ),
                  // );



                  },),
              ),
              const Positioned(
                top: 618,
                left: 45,
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Positioned(
                top: 605,
                left: 285,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color.fromARGB(255, 79, 84, 96),
                      padding: const EdgeInsets.all(20)),
                  onPressed: () {
                    controller.key1.currentState!.validate();
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
              ),
              Positioned(
                top: 740,
                left: 45,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Text(
                    'Sing in',
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
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
