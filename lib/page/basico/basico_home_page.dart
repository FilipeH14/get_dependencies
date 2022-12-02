import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_depedencias/page/basico/basico_controller.dart';

class BasicoHomePage extends StatelessWidget {
  final controller = Get.put(BasicoController());

  BasicoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('basico home page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Text(
                  controller.nome,
                  style: Theme.of(context).textTheme.titleLarge,
                );
              },
            ),
            const WidgetInterno(),
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Widget interno'),
        const SizedBox(height: 20),
        ElevatedButton(
          child: const Text('Alterar nome'),
          onPressed: () => Get.find<BasicoController>().alterarNome('FilipeHaniel'),
        ),
      ],
    );
  }
}
