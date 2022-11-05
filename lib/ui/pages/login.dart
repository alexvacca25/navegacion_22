import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController passwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              Username(u: username),
              Password(p: passwd),
              const SizedBox(
                height: 15,
              ),
              OutlinedButton(
                  onPressed: () {
                    print('Usuario: ${username.text}');
                    print('Passwd: ${passwd.text}');
                    if (username.text.isNotEmpty && passwd.text.isNotEmpty) {
                      print('Si hay Datos');

                      if (username.text == 'Alexv' && passwd.text == "123456") {
                        Get.offAllNamed('/principal');
                      } else {
                        Get.showSnackbar(const GetSnackBar(
                          title: 'Alertas',
                          message: 'Usuario no Existe en la Base de Datos',
                          duration: Duration(seconds: 4),
                          icon: Icon(Icons.warning),
                          backgroundColor: Colors.amber,
                        ));
                      }
                    } else {
                      print('No hay Datos');
                      Get.showSnackbar(const GetSnackBar(
                        title: 'Alertas',
                        message: 'Ingrese la Informacion Completa',
                        duration: Duration(seconds: 4),
                        icon: Icon(Icons.warning),
                        backgroundColor: Colors.red,
                      ));
                    }
                  },
                  child: const Text('Login')),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed('/add');
                  },
                  child: const Text('Registrarse'))
            ],
          ),
        ),
      ),
    );
  }
}
