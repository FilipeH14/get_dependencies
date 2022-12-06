import 'package:flutter/material.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('métodos home page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Put'),
              onPressed: () => Navigator.of(context).pushNamed('/metodos/put'),
            ),
          ],
        ),
      ),
    );
  }
}
