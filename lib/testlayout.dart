import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'RAW/coloer/hex.dart';


class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
 
  int counter = 0;

  List<Map<String, dynamic>> gridMap = [];

  List<ProductSelect> productSelectsOrder = [];

  List<ProductList> products = [
    ProductList(
        name: 'item1',
        price: '100',
        image:
            'https://fourleaf-datacenter.s3-ap-southeast-1.amazonaws.com/partner1/media/dining_room/1b572ae3-ff81-4fa0-a52c-a0b4ab005783_35SD.jpeg',
        option: ''),
    ProductList(
        name: 'item2',
        price: '200',
        image:
            'https://fourleaf-datacenter.s3-ap-southeast-1.amazonaws.com/partner1/media/dining_room/1b572ae3-ff81-4fa0-a52c-a0b4ab005783_35SD.jpeg',
        option: ''),
    ProductList(
        name: 'item3',
        price: '300',
        image:
            'https://fourleaf-datacenter.s3-ap-southeast-1.amazonaws.com/partner1/media/dining_room/1b572ae3-ff81-4fa0-a52c-a0b4ab005783_35SD.jpeg',
        option: ''),
    ProductList(
        name: 'item4',
        price: '400',
        image:
            'https://fourleaf-datacenter.s3-ap-southeast-1.amazonaws.com/partner1/media/dining_room/1b572ae3-ff81-4fa0-a52c-a0b4ab005783_35SD.jpeg',
        option: ''),
    ProductList(
        name: 'item4',
        price: '500',
        image:
            'https://fourleaf-datacenter.s3-ap-southeast-1.amazonaws.com/partner1/media/dining_room/1b572ae3-ff81-4fa0-a52c-a0b4ab005783_35SD.jpeg',
        option: '')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Order')),
      body: layout(),
    );
  }

  layout() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: sectionOrder(),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: sectionListProdect(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  sectionOrder() {
    return Row(
      children: [
        Flexible(
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.orange,
              ),
              child:
              productSelectsOrder.isNotEmpty
                  ? cardList()
                  : Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                        ),
                        child: Text('No Item'),
                      ),
                    ),
              ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Colors.teal,
            ),
          ),
        )
      ],
    );
  }

  sectionListProdect() {
    return SingleChildScrollView(
      child: Wrap(
        children: products
            .map((i) => Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        productSelectsOrder.add(ProductSelect(
                          name: i.name,
                          price: i.price,
                          image: i.image,
                        ));
                      }),
                      print('name: ${i.name}'),
                      print(productSelectsOrder)
                    },
                    child: Container(
                      width: 150,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: HexColor(whiteColor),
                      ),
                      child: Column(children: [
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0)),
                              color: HexColor(backgroundItemColor),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              color: HexColor(backgroundItemColor2),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${i.name}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        '${i.price}.-',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: HexColor(textPriceColor)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  cardList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return cardItem(productSelectsOrder[index]);
      },
      itemCount: productSelectsOrder.length,
    );
  }

  cardItem(ProductSelect selectsOrder) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.image,
                size: 84.0,
              ),
              Column(
                children: <Widget>[
                  Text(selectsOrder.name),
                  Text(selectsOrder.price),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  selectsOrder.amount++;
                }),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text('${selectsOrder.amount}'),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectsOrder.amount == 0 ? print('counter at 0') : selectsOrder.amount--;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Icon(Icons.remove),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProductList {
  String name = '';
  String price = '';
  String image = '';
  String option = '';

  ProductList({required this.name, required this.price, required this.image, required this.option});

  // ProductList(Map<String, dynamic> parsedJson)
  //     : name = parsedJson['name'] ?? 0,
  //       price = parsedJson['price'] ?? '';

}

class ProductSelect {
  String name = '';
  String price = '';
  String image = '';
  int amount = 1;

  ProductSelect({required this.name, required this.price, required this.image});
}