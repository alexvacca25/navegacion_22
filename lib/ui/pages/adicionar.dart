import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget.dart';

class Adicionar extends StatefulWidget {
  const Adicionar({super.key});

  @override
  State<Adicionar> createState() => _AdicionarState();
}

class _AdicionarState extends State<Adicionar> {
  TextEditingController u = TextEditingController();
  TextEditingController p = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Username(u: u),
            Password(p: p),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Registrarse'))
          ],
        ),
      ),
    );
  }
}
