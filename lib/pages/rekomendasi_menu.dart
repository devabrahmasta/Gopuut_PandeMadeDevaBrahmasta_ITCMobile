import 'package:flutter/material.dart';
import 'package:itc_mini_project/pages/ayam_tulang_lunak_page.dart';
import 'package:itc_mini_project/pages/luwe_page.dart';
import 'package:itc_mini_project/pages/mc_donald_page.dart';
import 'package:itc_mini_project/pages/mie_gacoan_page.dart';

class RekomendasiMenu extends StatelessWidget {
  RekomendasiMenu({super.key});

  final List<Widget> pages = [
    MieGacoanPage(),
    AyamTulangLunakPage(),
    LuwePage(),
    McDonaldPage(),
  ];

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

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: const Color.fromARGB(255, 255, 255, 255)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Rekomendasi',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: currentWidth * 0.9,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pages[index],
                        ));
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: currentWidth * 0.9,
                        height: currentHeight * 0.38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 210, 10, 0),
                              child: SizedBox(
                                width: currentWidth * 0.9,
                                height: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[index]["Location"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      items[index]["Name"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: currentHeight * 0.01,
                                    ),
                                    SizedBox(
                                      height: 20,
                                      child: Row(
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
                                            items[index]["Rating"],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: currentWidth * 0.9,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: NetworkImage(items[index]["Image"]),
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
            },
          ),
        ),
      ),
    );
  }
}
