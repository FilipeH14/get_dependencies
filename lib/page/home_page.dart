import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
