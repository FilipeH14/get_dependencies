import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_depedencias/page/metodos/delete_update/delete_controller.dart';
import 'package:get_depedencias/page/metodos/delete_update/update_controller.dart';

class DeletePage extends StatefulWidget {

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {

  @override
  void dispose() {
    Get.delete<DeleteController>(force: true);
    super.dispose();
  }

  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Delete')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            ElevatedButton(
              child: const Text('Buscar nome'),
              onPressed: () {
                setState(() {
                  nome = Get.find<DeleteController>().nome;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
