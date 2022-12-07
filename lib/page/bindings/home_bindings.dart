import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_depedencias/page/bindings/bindings_controller.dart';

class HomeBindings extends StatelessWidget {
  const HomeBindings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Buildando nossa página HomeBindings');
    return Scaffold(
      appBar: AppBar(title: const Text('Home bindins')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<BindingsController>().nome),
          ],
        ),
      ),
    );
  }
}
