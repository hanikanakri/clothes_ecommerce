import 'package:clothes_ecommerce/app/account/controller/Forgot_password_controller.dart';
import 'package:clothes_ecommerce/app/account/model/forgot_password_model.dart';
import 'package:clothes_ecommerce/app/base/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    ForgotPasswordController controller = Get.put(ForgotPasswordController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent, elevation: 0),
          onPressed: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_sharp),
        ),
      ),
      body: Form(
        key: controller.key2,
        autovalidateMode: AutovalidateMode.always,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CustomPaint(
                size: size,
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
              CustomPaint(
                size: size,
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter1(),
              ),
              CustomPaint(
                size: size,
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter3(),
              ),
              const Positioned(
                top: 140,
                left: 40,
                child: Text(
                  'Find Your Account',
                  style: TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Positioned(
                top: 365,
                left: 56,
                child: Text(
                  'Enter Your Email Address...',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 400,
                left: 55,
                width: size.width * 0.7,
                child:
                myTextFormField(
                  focusColor: Colors.black,
                  enabledBorderColor: Colors.white,
                  errorColor: Colors.amber,
                  controller: controller.findEmail,
                  type: TextInputType.emailAddress,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Email address is required';
                    } else if (!value.contains('@')) {
                      return 'Email is invalid';
                    }
                    return null;
                  },
                  labelText: 'Your Email Address',
                  labelColor: Colors.white,
                  widget: const Icon(
                    Icons.email,color: Colors.white,
                  ),



                // myTextFormField(
                //   hintColor: Colors.white,
                //   prefixIcon: const Icon(
                //     Icons.email,
                //     color: Colors.white,
                //   ),
                //   controller: controller.findEmail,
                //   type: TextInputType.emailAddress,
                //   labelColor: Colors.white,
                //   enabledBorderColor: Colors.white,
                //   validate: (value) {
                //     if (value!.isEmpty) {
                //       return 'Email Address is required';
                //     } else if (!value.contains('@')) {
                //       return "Email is invalid";
                //     }
                //     return null;
                //   },
                //   labelText: 'Enter your Email Address',
                //   border: const OutlineInputBorder(
                //     borderSide: BorderSide(
                //       color: Colors.black, // set the border color here
                //     ),
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(15),
                //     ),
                //   ),
                //   contentPadding: const EdgeInsets.only(top: 15),
                // ),

                //     TextFormField(
                //   controller: controller.findEmail,
                //   keyboardType: TextInputType.emailAddress,
                //   cursorColor: Colors.white,
                //   style: const TextStyle(color: Colors.white, fontSize: 16),
                //   decoration: const InputDecoration(
                //     prefixIcon: Icon(Icons.email, color: Colors.white),
                //     focusColor: Colors.white,
                //     errorStyle: TextStyle(color: Colors.white),
                //     hintText: 'Enter your email address',
                //     fillColor: Colors.white,
                //     hintStyle: TextStyle(
                //       color: Colors.white,
                //       fontSize: 12,
                //     ),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(15),
                //       ),
                //     ),
                //     contentPadding: EdgeInsets.only(top: 15),
                //   ),
                //   validator: (value) {
                //     if (value!.isEmpty) {
                //       return 'Email address is required';
                //     } else if (value.length < 6) {
                //       return 'Email address must have more than 6 letters';
                //     }
                //     return null;
                //   },
                // ),
              ),

              ),Positioned(
                top: 550,
                left: 58,
                width: size.width * 0.7,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0x00add8e6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    controller.key2.currentState!.validate();
                  },
                  child: const Text('Find Account'),
                ),
              ),],
          ),
        ),
      ),
      // body: Form(
      //   key: controller.key2,
      //   child: Container(
      //     width: size.width,
      //     height: size.height,
      //     color: const Color.fromARGB(255, 18, 34, 47),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         SizedBox(
      //           width: size.width*0.7,
      //           child: const Text(
      //             'Find your Account',
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //               fontSize: 30,
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: size.height * 0.01,
      //         ),
      //         SizedBox(
      //           width: size.width*0.7,
      //           child: const Text(
      //             'Enter your email address',
      //             style: TextStyle(
      //               color: Colors.white,
      //               //fontWeight: FontWeight.bold,
      //               fontSize: 18,
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: size.height * 0.04,
      //         ),
      //         SizedBox(
      //           width: size.width * 0.7,
      //           // height: size.height,
      //           child: TextFormField(
      //             controller: controller.findEmail,
      //             keyboardType: TextInputType.emailAddress,
      //             cursorColor: Colors.white,
      //             style: const TextStyle(color: Colors.white, fontSize: 16),
      //             decoration: const InputDecoration(
      //               prefixIcon: Icon(Icons.email, color: Colors.white),
      //               focusColor: Colors.white,
      //               errorStyle: TextStyle(color: Colors.white),
      //               hintText: 'Enter your email address',
      //               fillColor: Colors.white,
      //               hintStyle: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 12,
      //               ),
      //               border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.all(Radius.circular(15))),
      //               contentPadding: EdgeInsets.only(top: 15),
      //             ),
      //             validator: (value) {
      //               if (value!.isEmpty) {
      //                 return 'Email address is required';
      //               } else if (value.length < 6) {
      //                 return 'Email address must have more than 6 letters';
      //               }
      //               return null;
      //             },
      //           ),
      //         ),
      //         SizedBox(
      //           height: size.height * 0.01,
      //         ),
      //         SizedBox(
      //           width: size.width * 0.7,
      //           child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor: Colors.blueAccent,
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(25)),
      //             ),
      //             onPressed: () {
      //               controller.send1();
      //             },
      //             child: const Text('Find Account'),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
