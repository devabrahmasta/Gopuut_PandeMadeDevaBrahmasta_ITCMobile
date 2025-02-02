import 'dart:developer';

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: SizedBox(
              width: 250,
              child: Text(
                'Ayam Tulang Lunak Prestobox',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          actions: [
            IconButton(
                onPressed: () {
                  Icon(Icons.thumb_up_rounded);
                },
                icon: Icon(Icons.thumb_up_outlined))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Column(
            children: [
              Text('$number'),
               OutlinedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                    log('$number');
                  },
                  child: Text('Tambah'),
                  style: OutlinedButton.styleFrom(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                    backgroundColor: const Color.fromARGB(255, 249, 249, 249),
                    foregroundColor: const Color.fromARGB(255, 42, 109, 45),
                  ),
                ),
            
            ],
          )
        ]));
  }
}
