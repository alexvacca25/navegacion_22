import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password({
    Key? key,
    required this.p,
  }) : super(key: key);

  final TextEditingController p;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      controller: p,
      decoration: const InputDecoration(labelText: 'Ingrese la constraseña'),
    );
  }
}

class Username extends StatelessWidget {
  const Username({
    Key? key,
    required this.u,
  }) : super(key: key);

  final TextEditingController u;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: u,
      decoration: const InputDecoration(labelText: 'Ingrese nombre de usuario'),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 70,
      child: Icon(
        Icons.home_outlined,
        size: 60,
        color: Colors.brown,
      ),
    );
  }
}
