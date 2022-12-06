import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_depedencias/page/metodos/lazyPut/lazy_put_controller.dart';
import 'package:get_depedencias/page/metodos/lazyPut/lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({Key? key}) : super(key: key) {
    Get.lazyPut(() => LazyPutController());
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '';
  String nomeFenix = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lazy Put Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            Text('Nome Fenix: $nomeFenix'),
            ElevatedButton(
              child: const Text('Buscar nome'),
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                setState(() => nome = controller.nome);
              },
            ),
            ElevatedButton(
              child: const Text('Alterar nome'),
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                controller.nome = 'Jornada Getx';
              },
            ),

            ElevatedButton(
              child: const Text('Buscar nome fenix'),
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                setState(() => nome = controller.nome);
              },
            ),
            ElevatedButton(
              child: const Text('Alterar nome fenix'),
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                controller.nome = 'Jornada Getx';
              },
            ),
          ],
        ),
      ),
    );
  }
}
