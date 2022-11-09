import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navegacion_22/domain/models/cliente.dart';

class AddClientes extends StatefulWidget {
  const AddClientes({super.key});

  @override
  State<AddClientes> createState() => _AddClientesState();
}

class _AddClientesState extends State<AddClientes> {
  final List<Cliente> addcliente = [];
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlapellido = TextEditingController();
  TextEditingController controltelefono = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Clientes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: controlnombre,
              decoration: const InputDecoration(labelText: 'Ingrese el Nombre'),
            ),
            TextField(
              controller: controlapellido,
              decoration:
                  const InputDecoration(labelText: 'Ingrese el Apellido'),
            ),
            TextField(
              controller: controltelefono,
              decoration:
                  const InputDecoration(labelText: 'Ingrese el Telefono'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  addcliente.add(Cliente(
                      nombre: controlnombre.text,
                      apellido: controlapellido.text,
                      telefono: controltelefono.text));
                  Navigator.pop(context, addcliente);
                },
                child: const Text('Guardar Cliente'))
          ],
        ),
      ),
    );
  }
}
