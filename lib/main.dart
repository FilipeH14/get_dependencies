import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_depedencias/page/basico/basico_home_page.dart';
import 'package:get_depedencias/page/bindings/bindings_controller.dart';
import 'package:get_depedencias/page/bindings/bindings_exemple.dart';
import 'package:get_depedencias/page/bindings/home_bindings.dart';
import 'package:get_depedencias/page/home_page.dart';
import 'package:get_depedencias/page/initial_bindings/initial_bindings_page.dart';
import 'package:get_depedencias/page/initial_bindings/initial_bindins.dart';
import 'package:get_depedencias/page/metodos/create/create_home_page.dart';
import 'package:get_depedencias/page/metodos/delete_update/delete_page.dart';
import 'package:get_depedencias/page/metodos/delete_update/update_home_page.dart';
import 'package:get_depedencias/page/metodos/lazyPut/lazy_put_page.dart';
import 'package:get_depedencias/page/metodos/metodos_home_page.dart';
import 'package:get_depedencias/page/metodos/put/put_page.dart';
import 'package:get_depedencias/page/metodos/putAsync/put_async_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindins(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/basico',
          page: () => BasicoHomePage(),
        ),
        GetPage(
          name: '/metodos',
          page: () => const MetodosHomePage(),
          children: [
            GetPage(
              name: '/put',
              page: () => const PutPage(),
            ),
            GetPage(
              name: '/lazy-put',
              page: () => LazyPutPage(),
            ),
            GetPage(
              name: '/async-put',
              page: () => PutAsyncPage(),
            ),
            GetPage(
              name: '/create',
              page: () => CreateHomePage(),
            ),
            GetPage(
              name: '/update',
              page: () => UpdateHomePage(),
            ),
            GetPage(
              name: '/delete',
              page: () => DeletePage(),
            ),
          ],
        ),
        GetPage(
          name: '/bindings',
          binding: BindingsExemple(),
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/bindings_builder',
          binding: BindingsBuilder(
            () {
              Get.put(
                BindingsController(nome: 'Inicializado dentro do bindings'),
              );
            },
          ),
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/bindings_builder_put',
          binding: BindingsBuilder.put(() =>
              BindingsController(nome: 'Inicializado dentro do bindings')),
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/initial_bindings',
          page: () => const InitialBindingsPage(),
        ),
      ],
    );
  }
}
