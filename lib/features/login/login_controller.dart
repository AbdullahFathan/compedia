import 'package:compedia/features/welcome/welcome_page.dart';
import 'package:compedia/utils/helper/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class LoginController extends BaseController<void> {
  RxBool isObscure = false.obs;
  RxBool isErorUser = true.obs;
  final formKey = GlobalKey<FormBuilderState>();

  void changeObscure() {
    isObscure(!isObscure.value);
  }

  Future<void> login() async {
    Get.offAllNamed(WelcomePage.route);
  }
}
