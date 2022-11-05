import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado General'),
        actions: [
          IconButton(
              onPressed: () {
                Get.offAllNamed('/login');
              },
              icon: const Icon(Icons.exit_to_app_outlined))
        ],
      ),
    );
  }
}
