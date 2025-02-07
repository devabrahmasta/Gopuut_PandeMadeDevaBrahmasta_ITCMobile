import 'package:flutter/material.dart';
import 'package:itc_mini_project/pages/ayam_tulang_lunak_page.dart';
import 'package:itc_mini_project/pages/luwe_page.dart';
import 'package:itc_mini_project/pages/mc_donald_page.dart';
import 'package:itc_mini_project/pages/mie_gacoan_page.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({super.key});

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
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

  List<Map<String, dynamic>> _foundItems = [];
  @override
  initState() {
    _foundItems = items;
    super.initState();
  }

  void _runFilter(String enterKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enterKeyword.isEmpty) {
      results = items;
    } else {
      results = items
          .where((item) =>
              item["Name"].toLowerCase().contains(enterKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            shape: CircleBorder(),
            elevation: 3,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          onChanged: (value) => _runFilter(value),
          enabled: true,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: 'Lagi mau mamam apa?',
            hintStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
            prefixIcon: const Icon(Icons.search),
            fillColor: Colors.grey.shade100,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.grey.shade300,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.green, width: 1),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _foundItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  key: ValueKey(_foundItems[index]["Name"]),
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
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
                          width: 450,
                          height: 360,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ]),
                          child: Column(children: [
                            SizedBox(width: 300, height: 260),
                            SizedBox(
                              width: 400,
                              height: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _foundItems[index]["Location"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    _foundItems[index]["Name"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
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
                                        _foundItems[index]["Rating"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
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
                          width: 450,
                          height: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                image:
                                    NetworkImage(_foundItems[index]["Image"]),
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
        ],
      ),
    );
  }
}
