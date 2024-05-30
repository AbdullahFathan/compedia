import 'package:compedia/data/remote/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class RegisterController extends BaseController<void> {
  RxBool isObscure = false.obs;
  RxBool isErorUser = true.obs;
  final formKey = GlobalKey<FormBuilderState>();

  List<String> univ = ["UB", "UI", "ITB", "UGM"];

  void changeObscure() {
    isObscure(!isObscure.value);
  }

  Future<void> register() async {}
}
