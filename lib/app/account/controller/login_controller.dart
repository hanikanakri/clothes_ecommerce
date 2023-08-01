import 'package:clothes_ecommerce/app/base/controller/base.dart';
import 'package:flutter/material.dart';


class LogInController extends BaseController{
   bool obscureText =true;

   final TextEditingController _emailController = TextEditingController();
   final TextEditingController _passwordController = TextEditingController();
   final  GlobalKey<FormState> _formState =GlobalKey<FormState>();

   void showPassword(){
      obscureText=!obscureText;
      update();
   }


   GlobalKey<FormState> get formState => _formState;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get emailController => _emailController;
}