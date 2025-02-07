import 'package:flutter/material.dart';

class LuwePage extends StatefulWidget {
  const LuwePage({super.key});

  @override
  State<LuwePage> createState() => _LuwePageState();
}

class _LuwePageState extends State<LuwePage> {
  final List<Map<String, dynamic>> _menu = [
    {
      "Name": "Paket Hemat Rame",
      "Desc": "Paket Komplit Endog + Es Teh",
      "Price": "36.800",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9166c09a-2437-4791-a05d-178ca36d7968_Go-Biz_20221011_123235.jpeg?auto=format",
    },
    {
      "Name": "Paket Endog Spesial",
      "Desc": "Sego + Endog + Saos + Kriuk",
      "Price": "54.800",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/7013e56e-3ad5-478a-bd2e-bf34f39ab73f_Go-Biz_20230105_213906.jpeg?auto=format",
    },
    {
      "Name": "Paket Kenyang Banget",
      "Desc": "1 Paket Komplit + 1 Snack + 1 Minuman",
      "Price": "54.800",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/7013e56e-3ad5-478a-bd2e-bf34f39ab73f_Go-Biz_20230105_213906.jpeg?auto=format",
    },
    {
      "Name": "Paket Biasa Sayur Krispi",
      "Desc": "Sego + Terong Krispi + Jamur Krispi + Kol Goreng + Saus",
      "Price": "22.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/d555685b-1105-4cc2-8cc7-76571bfa1595_Go-Biz_20241002_221942.jpeg?auto=format",
    },
    {
      "Name": "Paket Hemat Sepi",
      "Desc": "Paket Komplit Biasa + Es teh",
      "Price": "34.400",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/eb770ee3-b79e-4643-86cf-69d665118346_Go-Biz_20221011_123307.jpeg?auto=format",
    },
  ];
  final List<Map<String, dynamic>> _beverage = [
    {
      "Name": "Sunny Haze",
      "Price": "13.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/079a29f3-b571-471e-b9f0-804472882701_Go-Biz_20210131_131830.jpeg?auto=format",
    },
    {
      "Name": "Cloudy Haze",
      "Price": "13.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/088bc844-cc5a-4da5-9dd8-7e331812fc55_Go-Biz_20210131_132726.jpeg?auto=format",
    },
    {
      "Name": "Lava Haze",
      "Price": "13.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/e46cbf2e-af75-42b8-a2de-0c3d52b0dd46_Go-Biz_20210131_132806.jpeg?auto=format",
    },
  ];

  late List<int> totalMenu = List.filled(_menu.length, 0);
  late List<int> totalBeverage = List.filled(_beverage.length, 0);

  @override
  initState() {
    totalMenu = List.filled(_menu.length, 0);
    totalBeverage = List.filled(_beverage.length, 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //appBar
          SliverAppBar(
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
            backgroundColor: Colors.green,
            pinned: true,
            centerTitle: false,
            expandedHeight: 200,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Luwe Ricebowl, Concat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Image(
                image: NetworkImage(
                  'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/7456dc26-bfd6-4e88-ac7b-487f2d7fdc2c_Go-Biz_20240314_075659.jpeg?auto=format',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //description
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Paket Kenyang',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //listView food
          SliverList.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                width: currentWidth * 0.6,
                height: 150,
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(_menu[index]["Image"]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: currentWidth * 0.55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _menu[index]["Name"],
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: currentWidth * 0.5,
                            child: Text(
                              _menu[index]["Desc"],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                              maxLines: 3,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: currentWidth * 0.6,
                            child: Row(
                              children: [
                                Text(
                                  _menu[index]["Price"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: currentWidth * 0.1,
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            if (totalMenu[index] > 0) {
                                              totalMenu[index]--;
                                            }
                                          });
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(currentWidth * 0.08,
                                              currentWidth * 0.08),
                                          side: BorderSide(
                                            color: Colors.green.shade900,
                                            width: 1,
                                          ),
                                          shape: CircleBorder(),
                                        ),
                                        child: Icon(Icons.remove,
                                            color: Colors.green.shade900),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${totalMenu[index]}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green.shade900),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            totalMenu[index]++;
                                          });
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(currentWidth * 0.08,
                                              currentWidth * 0.08),
                                          side: BorderSide(
                                              color: Colors.green.shade900,
                                              width: 1),
                                          shape: CircleBorder(),
                                        ),
                                        child: Icon(Icons.add,
                                            color: Colors.green.shade900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              indent: 20,
              endIndent: 20,
            ),
            itemCount: _menu.length,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Minuman',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //listView minuman
          SliverList.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                width: currentWidth * 0.6,
                height: 150,
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(_beverage[index]["Image"]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: currentWidth * 0.55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _beverage[index]["Name"],
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: currentWidth * 0.6,
                            child: Row(
                              children: [
                                Text(
                                  _beverage[index]["Price"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: currentWidth * 0.1,
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            if (totalMenu[index] > 0) {
                                              totalMenu[index]--;
                                            }
                                          });
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(currentWidth * 0.08,
                                              currentWidth * 0.08),
                                          side: BorderSide(
                                            color: Colors.green.shade900,
                                            width: 1,
                                          ),
                                          shape: CircleBorder(),
                                        ),
                                        child: Icon(Icons.remove,
                                            color: Colors.green.shade900),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${totalMenu[index]}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green.shade900),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            totalMenu[index]++;
                                          });
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(currentWidth * 0.08,
                                              currentWidth * 0.08),
                                          side: BorderSide(
                                              color: Colors.green.shade900,
                                              width: 1),
                                          shape: CircleBorder(),
                                        ),
                                        child: Icon(Icons.add,
                                            color: Colors.green.shade900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              indent: 20,
              endIndent: 20,
            ),
            itemCount: _beverage.length,
          ),
        ],
      ),
    );
  }
}
