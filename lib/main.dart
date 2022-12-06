import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_depedencias/page/basico/basico_home_page.dart';
import 'package:get_depedencias/page/home_page.dart';
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
          ],
        ),
      ],
    );
  }
}
