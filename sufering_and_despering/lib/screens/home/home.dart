import 'package:flutter/material.dart';

import '../settings/settings.dart';

class HomePage extends StatelessWidget {
   const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Organização Pessoal'),
        actions: [
          IconButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserSettingsPage()),
                );
          }, icon: const Icon(Icons.settings))
        ],

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bem-vindo(a)!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // ignore: prefer_const_constructors
            const Text(
              'Este é o seu aplicativo de organização pessoal.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Começar'),
            ),
          ],
        ),
      ),
    );
  }
}
