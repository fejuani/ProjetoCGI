import 'package:flutter/material.dart';

import '../settings/settings.dart';
import '../Banking/primeiraTela.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Organização Pessoal'),
        actions: [
          Container(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              radius: 50.0,
              foregroundImage: const AssetImage('../../assets/user.jpg'),
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserSettingsPage()),
                );
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // Cada ícone é um GestureDetector que navega para uma tela diferente
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => primeiraTela()),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                child: const Icon(Icons.graphic_eq, color: Color(0xFF6CE5E8)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => primeiraTela()),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                child: Icon(Icons.graphic_eq, color: Color(0xFF6CE5E8)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => primeiraTela()),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                child: const Icon(Icons.graphic_eq, color: Color(0xFF6CE5E8)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => primeiraTela()),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                child: const Icon(Icons.graphic_eq, color: Color(0xFF6CE5E8)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => primeiraTela()),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                child: const Icon(Icons.graphic_eq, color: Color(0xFF6CE5E8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
