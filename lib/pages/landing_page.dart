import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                child: Image(
                  image: AssetImage(
                    'assets/logo_gojek.png',
                    // 'assets/goput_removebg_preview.png',
                  ),
                ),
              ),
              Text(
                'gojax',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700)
                    .copyWith(color: const Color.fromARGB(255, 30, 188, 69)),
              ),
            ],
          )),
      body: Column(
        children: [
          ListTile(
            title: Text('Rekomendasi resto di areamu',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                )),
            subtitle: Text(
              'Kami pilihin yang enak dan dekat.',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
            trailing: ElevatedButton(
                onPressed: () {},
                child: Text('See All'),
                style: ElevatedButton.styleFrom(
                  primary: backgro,
                )),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
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
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
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
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                  child: Stack(
                    children: [
                      Container(
                        width: 450,
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
            ),
          ),
        ],
      ),
    );
  }
}
