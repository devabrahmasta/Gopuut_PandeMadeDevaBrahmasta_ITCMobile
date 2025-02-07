import 'package:flutter/material.dart';

class MieGacoanPage extends StatefulWidget {
  const MieGacoanPage({super.key});

  @override
  State<MieGacoanPage> createState() => _MieGacoanPageState();
}

class _MieGacoanPageState extends State<MieGacoanPage> {
  final List<Map<String, dynamic>> _menu = [
    {
      "Name": "GACOAN COMBAT NP A",
      "Desc":
          "2 mie gacoan lv 1, 1 udang keju, 1 udang rambutan, 2 lemon tea - np",
      "Price": "74.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/6fea0b90-190e-49fb-ac9a-cbb62123a2ca_MNU_515_20240910175854.jpeg?auto=format",
    },
    {
      "Name": "GACOAN COMBAT NP B",
      "Desc":
          "1 mie gacoan, 1 mie gacoan lv 1, 1 udang keju, 1 udang rambutan, 2 lemon te - np",
      "Price": "74.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/6fea0b90-190e-49fb-ac9a-cbb62123a2ca_MNU_515_20240910175854.jpeg?auto=format",
    },
    {
      "Name": "GACOAN COMBAT NP C",
      "Desc":
          "1 mie hompimpa lv 1, 1 mie gacoan lv 1, 1 udan keju, 1 udang rambutan, 2 lemon tea - np",
      "Price": "74.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/6fea0b90-190e-49fb-ac9a-cbb62123a2ca_MNU_515_20240910175854.jpeg?auto=format",
    },
    {
      "Name": "GACOAN COMBAT NP D",
      "Desc":
          "1 mie suit, 1 mie gacoan lv 1 , 1 udang keju, 1 udang rambutan, 2 lemon tea - np",
      "Price": "74.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/fe2e5f48-bfd0-4bd5-8f91-c780912c14cc_MNU__20240903105629.jpg?auto=format",
    },
    {
      "Name": "GACOAN COMBAT NP E",
      "Desc":
          "2 mie gacoan lv 0, 1 udang keju, 1 udang rambutan, 2 lemon tea - np",
      "Price": "74.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/fbaf93a5-159b-4561-9ab7-51500c898561_MNU__20240903111351.jpg?auto=format",
    },
  ];
  final List<Map<String, dynamic>> _dimsum = [
    {
      "Name": "UDANG KEJU",
      "Price": "14.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/de7ef892-4611-42ca-8d9d-b1ff78b030ac_MNU_130_20230909111508.jpg?auto=format",
    },
    {
      "Name": "UDANG RAMBUTAN",
      "Price": "14.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1bc77f05-ebd7-42a5-9e78-7cb2d49900d0_MNU_131_20230909111703.jpg?auto=format",
    },
    {
      "Name": "SIOMAY AYAM",
      "Price": "14.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/6037d228-cbb9-4210-8e30-004de2f468d9_MNU_126_20230909100329.jpg?auto=format",
    },
  ];

  late List<int> totalMenu = List.filled(_menu.length, 0);
  late List<int> totalDimsum = List.filled(_dimsum.length, 0);

  @override
  initState() {
    totalMenu = List.filled(_menu.length, 0);
    totalDimsum = List.filled(_dimsum.length, 0);
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
                'Mie Gacoan, Babarsari ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Image(
                image: NetworkImage(
                  'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/4c0d3359-6625-4d3b-b5e4-710bdd850186_gobiz-dashboard-image_1730106768734.jpg',
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
                    'PAKET COMBAT -NP',
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
                    'DIMSUM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //listView dimsum
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
                          image: NetworkImage(_dimsum[index]["Image"]),
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
                            _dimsum[index]["Name"],
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
                                  _dimsum[index]["Price"],
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
            itemCount: _dimsum.length,
          ),
        ],
      ),
    );
  }
}
