import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itc_mini_project/pages/second_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 4,
          shadowColor: Colors.black26,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Row(
            children: [
              SizedBox(
                // margin: const EdgeInsets.only(left: 10, right: 5),
                width: 50,
                height: 50,
                child: SvgPicture.network('assets/Gofood_logo.svg'),
              ),
              Text(
                'gopuut',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700)
                    .copyWith(color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          )),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: 'Lagi mau mamam apa?',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                    prefixIcon: const Icon(Icons.search),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: Text('Rekomendasi resto di areamu',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Text(
              'Kami pilihin yang enak dan dekat.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ));
              },
              child: Text('See All'),
              style: ElevatedButton.styleFrom(
                textStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                backgroundColor: const Color.fromARGB(255, 223, 251, 224),
                foregroundColor: const Color.fromARGB(255, 42, 109, 45),
              ),
            ),
          ),

          //HORIZONTAL
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 4, 15),
                  child: Stack(
                    children: [
                      Container(
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                // spreadRadius: 0,
                                offset: Offset(2, 2),
                              ),
                            ]),
                      ),
                      Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 197, 85, 85),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                // spreadRadius: 0,
                                offset: Offset(2, 2),
                              )
                            ]),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 300,
                            height: 160),
                          SizedBox(
                              width: 270,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('1.38 km • 30-40 min',  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12,),),
                                  SizedBox(height:4,),
                                  Text('Ayam Tulang Lunak Prestobox', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18,),),
                                  SizedBox(height:6,),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange, size: 15,),
                                      SizedBox(width: 5,),
                                      Text('4.9 • 83rb+ rating', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12,),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                      

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 10, 4, 15),
                  child: Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                // spreadRadius: 0,
                                offset: Offset(2, 2),
                              ),
                            ]),
                      ),
                      Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 197, 85, 85),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                // spreadRadius: 0,
                                offset: Offset(2, 2),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 10, 4, 15),
                  child: Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                // spreadRadius: 0,
                                offset: Offset(2, 2),
                              ),
                            ]),
                      ),
                      Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 197, 85, 85),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                // spreadRadius: 0,
                                offset: Offset(2, 2),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // VERTIKAL
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                ListTile(
                  title: Text('Yang enak enak buat kamu!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      )),
                  subtitle: Text(
                    'Makan enak, mood enak, jalanin hari jadi enak!',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                  child: Stack(
                    children: [
                      Container(
                        width: 550,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                // spreadRadius: 0,
                                offset: Offset(2, 2),
                              ),
                            ]),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: const Color.fromARGB(255, 197, 85, 85),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                // spreadRadius: 0,
                                offset: Offset(2, 2),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
                  child: Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            // spreadRadius: 0,
                            offset: Offset(2, 2),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
              // scrollDirection: Axis.horizontal,

              // ListTile(
              //   title: Text('mie gacoan'),
              //   leading: Text('data'),
              //   subtitle: Text('level 5'),
              //   trailing: Text('data'),
              //   shape: ShapeBordeer,

              // )

              // ListTile(
              //   tileColor: Colors.blue,
              //   title: Text(
              //     'GACOAN',
              //   style: TextStyle(
              //     fontWeight: FontWeight.w900
              //   )),
              //   leading: ,
              // Container(
              //   width: 100,
              //   height: 200,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8),
              //     // color: Colors.amber,
              //     image: DecorationImage(
              //       image: NetworkImage(
              //       'https://awsimages.detik.net.id/community/media/visual/2021/09/28/promo-gofood.jpeg?w=1200'),
              //     ),
              //   ),
              // ),
              // Container(
              //   width: 100,
              //   height: 200,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8),
              //     // color: Colors.amber,
              //     image: DecorationImage(
              //       image: NetworkImage(
              //       'https://awsimages.detik.net.id/community/media/visual/2021/09/28/promo-gofood.jpeg?w=1200'),

              //     ),
              //   ),

              // ),
