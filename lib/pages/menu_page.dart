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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              //STATEFULL BUTTON
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        if (number > 0) {
                          number--;
                        }
                      });
                    },
                    child: Icon(Icons.remove, color: Colors.green.shade900),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.green.shade900, width: 1),
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('$number'),
                  SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    child: Icon(Icons.add, color: Colors.green.shade900),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.green.shade900, width: 1),
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),

              OutlinedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: 500,
                          height: 400,
                          child: Column(
                            children: [Text('Namanya')],
                          ),
                        );
                      });
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
          ),
        ],
      ),
    );
  }
}
