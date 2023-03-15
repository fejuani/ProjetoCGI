import 'package:flutter/material.dart';

class primeiraTela extends StatelessWidget {
    const primeiraTela({super.key});
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Tela'),
      ),
      body: const Center(
        child: Text('Bem-vindo à primeira tela!'),
      ),
    );
  }
}