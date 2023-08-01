
import 'package:clothes_ecommerce/app/base/controller/base.dart';
import 'package:flutter/cupertino.dart';

class ForgotPasswordController extends BaseController {
  TextEditingController findEmail = TextEditingController();
  GlobalKey<FormState> key2 = GlobalKey<FormState>();

  send1() {
    var formData1 = key2.currentState;
    if (formData1!.validate()) {
      debugPrint('is Validate');
    } else {
      debugPrint('is not validate');
    }
  }
}
