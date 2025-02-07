import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itc_mini_project/pages/ayam_tulang_lunak_page.dart';
import 'package:itc_mini_project/pages/luwe_page.dart';
import 'package:itc_mini_project/pages/mc_donald_page.dart';
import 'package:itc_mini_project/pages/mie_gacoan_page.dart';
import 'package:itc_mini_project/pages/rekomendasi_menu.dart';
import 'package:itc_mini_project/pages/search_bar_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //data carousel image
  final List<String> _myCarousel = [
    'https://cdn-site.gojek.com/uploads/FA_GOFOOD_LOMBAMAKAN_In_App_Blog_Banner_1456x818_7ea4861c22/FA_GOFOOD_LOMBAMAKAN_In_App_Blog_Banner_1456x818_7ea4861c22.jpg',
    'https://cdn-site.gojek.com/uploads/Surga_Liburan_Flash_Sale_Spesial_Gajian_In_App_1456x818_f4e9d25e86/Surga_Liburan_Flash_Sale_Spesial_Gajian_In_App_1456x818_f4e9d25e86.jpg',
    'https://cdn-site.gojek.com/uploads/Go_Food_Disidak_B1_G1_OCT_Blog_1456x818_240d549b70/Go_Food_Disidak_B1_G1_OCT_Blog_1456x818_240d549b70.jpg',
    'https://cdn-site.gojek.com/uploads/Go_Food_Promo_Maksimal_Calander_KV_02_56cb4e5aa3/Go_Food_Promo_Maksimal_Calander_KV_02_56cb4e5aa3.jpg',
    'https://cdn-site.gojek.com/uploads/Promo_Maksimal_FS_Mealtimes_Jan_Blog_1456x818_dc9b04c3d4/Promo_Maksimal_FS_Mealtimes_Jan_Blog_1456x818_dc9b04c3d4.jpg',
  ];

//data item gopuut
  final List<Map<String, dynamic>> items = [
    {
      "Location": "1.38 km • 30-40 min",
      "Name": "Mie Gacoan, Babarsari",
      "Rating": "4.9 • 83rb+ rating",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/4c0d3359-6625-4d3b-b5e4-710bdd850186_gobiz-dashboard-image_1730106768734.jpg",
    },
    {
      "Location": "2.26 km • 35-45 min",
      "Name": "Ayam Tulang Lunak Prestobox",
      "Rating": "4.8 • 88rb+ rating",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8b957b52-79fd-4fa5-bbc0-18f6feea9862_Go-Biz_20220122_162554.jpeg",
    },
    {
      "Location": "1.24 km • 25-30 min",
      "Name": "Luwe Ricebowl, Concat",
      "Rating": "5.0 • 82rb+ rating",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/7456dc26-bfd6-4e88-ac7b-487f2d7fdc2c_Go-Biz_20240314_075659.jpeg?auto=format",
    },
    {
      "Location": "1.38 km • 30-40 min",
      "Name": "McDonald's, Kaliurang",
      "Rating": "4.9 • 80rb+ rating",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/65bca3be-aec9-4b3a-b72a-a8866bd0f55d_brand-image_1735791800580.jpg?auto=format",
    },
  ];

  final List<Widget> _pages = [
    MieGacoanPage(),
    AyamTulangLunakPage(),
    LuwePage(),
    McDonaldPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          elevation: 4,
          shadowColor: Colors.black26,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: SvgPicture.asset('assets/Gofood_logo.svg'),
              ),
              Text(
                'gopuut',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700)
                    .copyWith(color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          )),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                CarouselSlider(
                  items: _myCarousel.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: NetworkImage(image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      height: 200,
                      viewportFraction: 0.9,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchBarPage(),
                    ));
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  enabled: false,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      hintText: 'Lagi mau mamam apa?',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                      prefixIcon: const Icon(Icons.search),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      constraints: BoxConstraints(
                        maxHeight: currentHeight * 0.05,
                        maxWidth: currentWidth * 0.9,
                      )),
                ),
              ),
            ),
            ListTile(
              title: Text('Rekomendasi resto di areamu',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  )),
              subtitle: Text(
                'Kami pilihin yang enak dan dekat.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              trailing: FilledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RekomendasiMenu(),
                      ));
                },
                style: FilledButton.styleFrom(
                  textStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 12),
                  backgroundColor: const Color.fromARGB(255, 223, 251, 224),
                  foregroundColor: const Color.fromARGB(255, 42, 109, 45),
                ),
                child: Text('Lihat semua'),
              ),
            ),
            //horizontal
            SizedBox(
              height: 255,
              child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final item = items[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _pages[index],
                              ));
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 5,
                                      offset: Offset(0, 2),
                                    ),
                                  ]),
                              child: Column(children: [
                                SizedBox(width: 300, height: 160),
                                SizedBox(
                                  width: 270,
                                  height: 80,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item["Location"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        item["Name"],
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
                                            item["Rating"],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              color: Colors.black45,
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
                              width: 300,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: NetworkImage(item["Image"]),
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
                    );
                  }),
            ),

            const SizedBox(height: 5),

            // vertikal
            const ListTile(
              title: Text('Yang enak enak buat kamu!',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  )),
              subtitle: Text(
                'Makan enak, mood enak, jalanin hari jadi enak!',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 165 * items.length.toDouble(),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _pages[index],
                                ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: currentWidth * 0.9,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 8,
                                        // spreadRadius: 0,
                                        offset: Offset(2, 2),
                                      ),
                                    ]),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 160,
                                      height: 150,
                                    ),
                                    SizedBox(
                                      width: currentWidth * 0.45,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            SizedBox(
                                              width: 200,
                                              child: Text(
                                                items[index]["Location"],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              items[index]["Name"],
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  items[index]["Rating"],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Colors.grey.shade700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          NetworkImage(items[index]["Image"])),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
