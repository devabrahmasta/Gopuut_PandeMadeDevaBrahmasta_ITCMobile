import 'package:flutter/material.dart';
import 'package:itc_mini_project/pages/menu_page.dart';

class RekomendasiMenu extends StatelessWidget {
  const RekomendasiMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rekomendasi',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ListTile(),
          Expanded(
            child: ListView(
              children: [
                //horizontal kedua
                 Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenuPage(),
                          ));
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  offset: Offset(2, 0),
                                ),
                              ]),
                          child: Column(
                            children: [
                            SizedBox(height: 160),
                            SizedBox(
                              width: 320,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '1.38 km • 30-40 min',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Ayam Tulang Lunak Prestobox',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '4.9 • 83rb+ rating',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          width: 400,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 197, 85, 85),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8b957b52-79fd-4fa5-bbc0-18f6feea9862_Go-Biz_20220122_162554.jpeg'),
                                fit: BoxFit.fitWidth,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                  offset: Offset(2, 0),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
