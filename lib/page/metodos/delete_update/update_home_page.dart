import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_depedencias/page/metodos/delete_update/delete_controller.dart';
import 'package:get_depedencias/page/metodos/delete_update/update_controller.dart';

class UpdateHomePage extends StatefulWidget {
  UpdateHomePage({Key? key}) : super(key: key) {
    Get.put(UpdateController(nome: 'Adicionado no inicio'));
    Get.put(DeleteController(nome: 'Adicionado no inicio'), permanent: true);
  }

  @override
  State<UpdateHomePage> createState() => _UpdateHomePageState();
}

class _UpdateHomePageState extends State<UpdateHomePage> {
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Update')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            ElevatedButton(
              child: const Text('Buscar nome'),
              onPressed: () {
                setState(() {
                  nome = Get.find<UpdateController>().nome;
                });
              },
            ),
            ElevatedButton(
              child: const Text('Alterando instância'),
              onPressed: () {
                setState(() {
                  Get.replace(
                      UpdateController(nome: 'Alterado no click do botão'));
                });
              },
            ),
            ElevatedButton(
              child: const Text('Removendo instância'),
              onPressed: () {
                setState(() {
                  Get.delete<UpdateController>();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
