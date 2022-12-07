import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_depedencias/page/bindings/bindings_controller.dart';

class BindingsExemple extends Bindings {

  BindingsExemple() {
    log('Iniciando BindingsExemple');
  }

  @override
  void dependencies() {
    log('Carregando as instâncias');
    Get.put(BindingsController(nome: 'Inicializado dentro do bindings'));
  }
}
