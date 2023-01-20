import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/RAW/coloer/hex.dart';
import '../models/provider_app.dart';
import 'compronan.dart';


class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<homepage> {
  final ScrollController _controller = ScrollController();
  
  int counter = 0;
   List<ProductSelect> Mapmanu = [];

  List<Map<String, dynamic>> addno = [
    {
      "title": "ITEM NAME",
      "price": "255",
    },
    {
      "title": "ITEM NAME",
      "price": "255",
    },
  ];

  final item = <dynamic>[
    Productprice(
        categoriesproduct: 'Food',
        productname: 'Pad Thai',
        image:
            'https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg',
        price: 255),
    Productprice(
        categoriesproduct: 'Food',
        productname: 'PSpicy fried chicken',
        image:
            'https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg',
        price: 220),
    Productprice(
        categoriesproduct: 'Curries',
        productname: 'Sun-dried shrimp salad',
        image:
            'https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg',
        price: 75),
    Productprice(
        categoriesproduct: 'Salad',
        productname: ' Chicken Green Curry',
        image:
            'https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg',
        price: 100),
    Productprice(
        categoriesproduct: 'Soup',
        productname: ' Chicken Green Curry',
        image:
            'https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg',
        price: 130),
  ];
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  
  Widget build(BuildContext context) {
    return
    
        // backgroundColor: HexColor(backgroundColor),
        Scrollbar(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          controller: _controller,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 15,
            mainAxisExtent: 237,
          ),
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            var tasks = context.read<provider_app>().tasks;
            return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                  color: Colors.white,
                ),
                child: Wrap(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        int y = 1;
                        if (y == 10) {
                           dialoger(BuildContext context) {
                            showDialog(
                              
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: Text("Listview"),
                                    content: SizedBox(
                                      width: double.maxFinite,
                                      child: ListView.builder(
                                        itemCount: 50,
                                        itemBuilder: (_, i) {
                                          return Text("Item $i");
                                        },
                                      ),
                                    ),
                                  );
                                });
                          }
                        } else {
                          context.read<provider_app>().add(tasks1(
                            name: "${item[index].productname}",
                            price: item[index].price,
                            images: "${item[index].image}",
                          ));
                        }
                        
                        //print('name' + "${item[index].productname}");
                        //print(Mapmanu);
                      });
                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                            ),
                            child: Image.network(
                              "${item[index].image}",
                              height: 170,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${item[index].productname}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .merge(
                                          const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "${item[index].price}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .merge(
                                          TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.grey.shade500,
                                          ),
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ))
                        ]),
                  ),
                ]));
          },
        ),
      ),
    );
  }
}
