import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  void initState() {
    super.initState();
    totalMenu = List.filled(_menu.length, 0);
    totalDimsum = List.filled(_dimsum.length, 0);
  }

  @override
  Widget build(BuildContext context) {
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
          //description resto
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
              final menu = _menu[index];
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
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(menu["Image"]),
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
                          menu["Name"],
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: Text(
                            menu["Desc"],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              menu["Price"],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  Text('${totalMenu[index]}'),
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
                      ],
                    ),

                    //button
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
              final dimsum = _dimsum[index];
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
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(dimsum["Image"]),
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
                          dimsum["Name"],
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              dimsum["Price"],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        if (totalDimsum[index] > 0) {
                                          totalDimsum[index]--;
                                        }
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
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
                                  Text('${totalDimsum[index]}'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        totalDimsum[index]++;
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
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
                      ],
                    ),

                    //button
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
          )
        ],
      ),
    );
  }
}
