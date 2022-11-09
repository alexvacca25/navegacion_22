import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navegacion_22/domain/models/cliente.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final List _clientes = listadoclientes;
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
      body: ListView.builder(
          itemCount: _clientes.length,
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: () {
                _eliminarcliente(context, _clientes[index]);
              },
              leading: CircleAvatar(
                child: Text(_clientes[index].nombre.substring(0, 1)),
              ),
              title: Text(
                  _clientes[index].nombre + " " + _clientes[index].apellido),
              subtitle: Text(_clientes[index].telefono),
              trailing: const Icon(Icons.call),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/addcliente')?.then((respuesta) {
            _clientes.addAll(respuesta);

            setState(() {});
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  _eliminarcliente(context, Cliente climsg) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Elimnar Cliente'),
        content: Text('Esta Seguro de Eliminar a:  ${climsg.nombre} ?'),
        actions: [
          TextButton(
            onPressed: () {
              _clientes.remove(climsg);
              setState(() {});
              Navigator.pop(context);
            },
            child: const Text(
              'Eliminar',
              style: TextStyle(color: Colors.red),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancelar',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
