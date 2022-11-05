import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navegacion_22/ui/pages/adicionar.dart';
import 'package:navegacion_22/ui/pages/login.dart';
import 'package:navegacion_22/ui/pages/principal.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navegacion',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        '/login': (context) => const Login(),
        '/principal': (context) => const Principal(),
        '/add': (context) => const Adicionar()
      },
    );
  }
}
