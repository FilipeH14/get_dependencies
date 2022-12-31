import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_depedencias/page/initial_bindings/auth_model.dart';

class InitialBindingsPage extends StatelessWidget {
  const InitialBindingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('initial page')),
      body: Center(
        child: Text(Get.find<AuthModel>().name),
      ),
    );
  }
}
