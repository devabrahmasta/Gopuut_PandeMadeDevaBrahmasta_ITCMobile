import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AyamTulangLunakPage extends StatefulWidget {
  const AyamTulangLunakPage({super.key});

  @override
  State<AyamTulangLunakPage> createState() => _AyamTulangLunakPageState();
}

class _AyamTulangLunakPageState extends State<AyamTulangLunakPage> {
  final List<Map<String, dynamic>> _menu = [
    {
      "Name": "Ayam Goreng Loenak SUEGER",
      "Desc":
          "Nasi Ayam Goreng Rempah Tulang Lunak + Pilihan Sambal Khas Prestobox + Lalapan + Es Teh",
      "Price": "36.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/11ae7c5c-5c39-46ef-a325-157c7c57c999_MAIN_014_20250121083820.jpeg?auto=format",
    },
    {
      "Name": "Ayam Bakar Loenak SUEGER",
      "Desc":
          "Pilihan Nasi + Ayam Bakar Bumbu Pedas Manis Tulang Lunak + Es Teh + Lalapan",
      "Price": "36.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/b98b4e24-553e-400f-bf42-5bf613c0db0f_MAIN_023_20250121002231.jpeg?auto=format",
    },
    {
      "Name": "Ayam Rempah Tulang Loenak",
      "Desc":
          "Ayam goreng rempah tulang lunak (dada/paha) + Lalapan, (belum termasuk sambal)",
      "Price": "25.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/c68def4c-3db3-4d3f-828d-beab488bb19f_MAIN_002_20240903212343.jpeg?auto=format",
    },
    {
      "Name": "Ayam Bakar Pedas Manis",
      "Desc":
          "Ayam Bakar Bumbu Pedas Manis Tulang Lunak + Lalapan, Belum termasuk sambal",
      "Price": "28.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/5c1ab0e3-5d2d-44a4-848c-3d27d430d9d9_MAIN_021_20250120234834.jpeg?auto=format",
    },
    {
      "Name": "Nasi Jamur Tempe",
      "Desc": "Nasi + Jamur Crispy + Tempe (2 pcs) + Lalapan",
      "Price": "18.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/b9741358-a6bc-4b10-8287-216770241716_MAIN_017_20240903183656.jpeg?auto=format",
    },
  ];
  final List<Map<String, dynamic>> _beverage = [
    {
      "Name": "Es Teh",
      "Price": "6.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/969a3281-96a2-497d-bc0d-2c30cc970b48_MAIN_011_20240903213935.jpeg?auto=format",
    },
    {
      "Name": "Es Jeruk",
      "Price": "8.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9301a5d8-80ce-4bd6-ac33-78368861ab9e_MAIN_012_20240903213516.jpeg?auto=format",
    },
    {
      "Name": "Es Jeruk Nipis",
      "Price": "8.000",
      "Image":
          "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/4bfc3096-ccbc-4d01-b060-ee496eba1a50_MAIN_013_20240903213817.jpeg?auto=format",
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
                'Ayam Tulang Lunak Prestobox',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Image(
                image: NetworkImage(
                  'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8b957b52-79fd-4fa5-bbc0-18f6feea9862_Go-Biz_20220122_162554.jpeg',
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
                    'Paket Ayam',
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
                    'Aneka Minuman',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //listView beverage
          SliverList.separated(
            itemBuilder: (BuildContext context, int index) {
              final beverage = _beverage[index];
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
                          image: NetworkImage(beverage["Image"]),
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
                          beverage["Name"],
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
                              beverage["Price"],
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
                                        if (totalBeverage[index] > 0) {
                                          totalBeverage[index]--;
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
                                  Text('${totalBeverage[index]}'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        totalBeverage[index]++;
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
            itemCount: _beverage.length,
          )
        ],
      ),
    );
  }
}
