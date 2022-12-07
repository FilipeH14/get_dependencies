import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('métodos home page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                child: const Text('Put'),
                onPressed: () => Navigator.of(context).pushNamed('/metodos/put'),
              ),
              ElevatedButton(
                child: const Text('Lazy Put'),
                onPressed: () => Navigator.of(context).pushNamed('/metodos/lazy-put'),
              ),
              ElevatedButton(
                child: const Text('Async Put'),
                onPressed: () => Navigator.of(context).pushNamed('/metodos/async-put'),
              ),
              ElevatedButton(
                child: const Text('create'),
                onPressed: () => Navigator.of(context).pushNamed('/metodos/create'),
              ),
              ElevatedButton(
                child: const Text('update'),
                onPressed: () => Navigator.of(context).pushNamed('/metodos/update'),
              ),
              ElevatedButton(
                child: const Text('indo paradelete'),
                onPressed: () => Get.offNamed('/metodos/delete'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
