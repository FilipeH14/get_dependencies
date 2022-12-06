import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PutAsyncPage extends StatefulWidget {
  PutAsyncPage({Key? key}) : super(key: key) {
    Get.putAsync(() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('nome', 'Put async exemplo');
      return prefs;
    }, permanent: true);
  }

  @override
  State<PutAsyncPage> createState() => _PutAsyncPageState();
}

class _PutAsyncPageState extends State<PutAsyncPage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('put async page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $name'),
            ElevatedButton(
              child: const Text('Buscar Nome'),
              onPressed: () {
                setState(() {
                  Get.find<SharedPreferences>().getString('nome') ??
                      'Nome não encontrado';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
