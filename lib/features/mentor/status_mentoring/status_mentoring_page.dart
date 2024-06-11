import 'status_mentoring_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusMentoringPage extends GetView<StatusMentoringController> {
  static const route = '/status/mentoring';
  const StatusMentoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
            child: Center(
          child: Text("Status Mentor Page"),
        ))
      ],
    );
  }
}
