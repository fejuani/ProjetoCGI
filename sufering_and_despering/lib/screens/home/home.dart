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
        title: const Text('usuario'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewAccount()),
                );
              },
              icon: const Icon(
                Icons.account_circle,
                size: 50,
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
    
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const primeiraTela()),
                );
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("assets/iconenubank.png", width: 90)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const primeiraTela()),
                );
              },
              child: Align(
                alignment: Alignment.topLeft,
                
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/iconesantander.jpg",
                      width: 90
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
              child: Align(
                alignment: Alignment.topLeft,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/iconeinter.png",
                      width: 90,
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
              child: Align(
                alignment: Alignment.topLeft,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/iconec6bank.png",
                      width: 90,
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
              child: Align(
                alignment: Alignment.topLeft,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/iconenext.jpg",
                      width: 90,
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
