import 'package:flutter/material.dart';

import '../settings/settings.dart';
import '../Banking/primeiraTela.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180.0,
        title: const Text('Organização Pessoal'),
        actions: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: const CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/user.jpg'),
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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 23.0),
              ),
            GestureDetector(
              
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const primeiraTela()),
                );
              },
              child: Center(
                                 
                child: ClipRRect(
                  
                  borderRadius: BorderRadius.circular(15), 
                  
                    child: Image.asset(
                  "assets/iconenubank.png",width: 90
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const primeiraTela()),
                );
              },
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  
                    child: Image.asset(
                  "assets/iconesantander.jpg",width: 90,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const primeiraTela()),
                );
              },
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  
                    child: Image.asset(
                  "assets/iconeinter.png",width: 90,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const primeiraTela()),
                );
              },
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  
                    child: Image.asset(
                  "assets/iconec6bank.png",width: 90,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const primeiraTela()),
                );
              },
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  
                    child: Image.asset(
                  "assets/iconenext.jpg",width: 90,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
    Chip customChip({
    required String text,
    required int backgroundColor,
    required BuildContext context,
  }) {
    return Chip(
      label: Text(text),
      backgroundColor: Color(backgroundColor),
      labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Colors.white,
          ),
    );
  }
}

