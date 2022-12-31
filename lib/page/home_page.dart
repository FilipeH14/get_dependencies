import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('Básico'),
              onPressed: () => Navigator.of(context).pushNamed('/basico'),
            ),
            TextButton(
              child: const Text('Métodos'),
              onPressed: () => Navigator.of(context).pushNamed('/metodos'),
            ),
            TextButton(
              child: const Text('Bindings'),
              onPressed: () => Navigator.of(context).pushNamed('/bindings'),
            ),
            TextButton(
              child: const Text('Bindings Builder'),
              onPressed: () => Navigator.of(context).pushNamed('/bindings_builder'),
            ),
            TextButton(
              child: const Text('Bindings Builder Put'),
              onPressed: () => Navigator.of(context).pushNamed('/bindings_builder_put'),
            ),
            TextButton(
              child: const Text('Initial Bindings'),
              onPressed: () => Get.toNamed('/initial_bindings'),
            ),
          ],
        ),
      ),
    );
  }
}
