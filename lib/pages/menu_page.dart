import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<String> _menuItems = [
    'Mie Gacoan Lv 1',
    'Mie Gacoan Lv 2',
    'Mie Gacoan Lv 3',
    'Mie Gacoan Lv 4',
    'Mie Gacoan Lv 5',
  ];
  final List<String> _hargaItems = [
    '14.000',
    '14.000',
    '14.000',
    '14.000',
    '14.000',
    '14.000',
  ];
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: SizedBox(
              width: 250,
              child: Text(
                'Mie Gacoan, Babarsari',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: _menuItems.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    width: 400,
                    height: 150,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 197, 85, 85),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8b957b52-79fd-4fa5-bbc0-18f6feea9862_Go-Biz_20220122_162554.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _menuItems[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.9 • 83rb+ rating',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              _hargaItems[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
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
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    color: Colors.green.shade900, width: 1),
                                shape: CircleBorder(),
                              ),
                              child: Icon(Icons.remove,
                                  color: Colors.green.shade900),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('$number'),
                            SizedBox(
                              width: 5,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  number++;
                                });
                              },
                              child:
                                  Icon(Icons.add, color: Colors.green.shade900),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    color: Colors.green.shade900, width: 1),
                                shape: CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),

//
//
              //
//
//

              // ListTile(
              //   title: Text('Makanan'),
              // ),
              // Column(children: [
              //   SizedBox(
              //     width: 400,
              //     height: 0.5,
              //     child: Container(
              //       color: Colors.grey,
              //     ),
              //   ),
              //   Container(
              //     width: 400,
              //     height: 150,
              //     color: Colors.amber,
              //     child:
              //     Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 100,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: const Color.fromARGB(255, 197, 85, 85),
              //             image: DecorationImage(
              //               image: NetworkImage(
              //                   'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8b957b52-79fd-4fa5-bbc0-18f6feea9862_Go-Biz_20220122_162554.jpeg'),
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         SizedBox(width: 15,),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             SizedBox(
              //               height: 15,
              //             ),
              //             Text(
              //               'Mie Gacoan Lv 1',
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w800,
              //                 fontSize: 16,
              //               ),
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Row(
              //               children: [
              //                 Icon(
              //                   Icons.star,
              //                   color: Colors.orange,
              //                   size: 15,
              //                 ),
              //                 SizedBox(
              //                   width: 5,
              //                 ),
              //                 Text(
              //                   '4.9 • 83rb+ rating',
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.w700,
              //                     fontSize: 12,
              //                     color: Colors.grey.shade700,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Text('14.500'),
              //             SizedBox(
              //               height: 10,
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ]),
            )
          ],
        )

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Column(
        //       children: [
        //         //STATEFULL BUTTON
        //         Row(
        //           children: [
        //             OutlinedButton(
        //               onPressed: () {
        //                 setState(() {
        //                   if (number > 0) {
        //                     number--;
        //                   }
        //                 });
        //               },
        //               child: Icon(Icons.remove, color: Colors.green.shade900),
        //               style: OutlinedButton.styleFrom(
        //                 side: BorderSide(color: Colors.green.shade900, width: 1),
        //                 shape: CircleBorder(),
        //               ),
        //             ),
        //             SizedBox(
        //               width: 10,
        //             ),
        //             Text('$number'),
        //             SizedBox(
        //               width: 10,
        //             ),
        //             OutlinedButton(
        //               onPressed: () {
        //                 setState(() {
        //                   number++;
        //                 });
        //               },
        //               child: Icon(Icons.add, color: Colors.green.shade900),
        //               style: OutlinedButton.styleFrom(
        //                 side: BorderSide(color: Colors.green.shade900, width: 1),
        //                 shape: CircleBorder(),
        //               ),
        //             ),
        //           ],
        //         ),

        //         OutlinedButton(
        //           onPressed: () {
        //             showModalBottomSheet(
        //                 context: context,
        //                 builder: (BuildContext context) {
        //                   return SizedBox(
        //                     width: 500,
        //                     height: 400,
        //                     child: Column(
        //                       children: [Text('Namanya')],
        //                     ),
        //                   );
        //                 });
        //           },
        //           child: Text('Tambah'),
        //           style: OutlinedButton.styleFrom(
        //             textStyle: TextStyle(
        //               fontWeight: FontWeight.w800,
        //               fontSize: 12,
        //             ),
        //             backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        //             foregroundColor: const Color.fromARGB(255, 42, 109, 45),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        );
  }
}
