import 'package:clothes_ecommerce/app/base/controller/base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpController extends BaseController{
  bool obscureText = true;



  late TextEditingController userNameController =TextEditingController();
  late TextEditingController emailController =TextEditingController();
  late TextEditingController passwordController =TextEditingController();
  late GlobalKey<FormState> key1 =GlobalKey<FormState>();



  showText(){
    obscureText=!obscureText;
    update();
  }




}