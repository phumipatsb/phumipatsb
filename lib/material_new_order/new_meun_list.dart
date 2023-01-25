import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/RAW/coloer/hex.dart';
import '../models/provider_app.dart';
import 'compronan.dart';

class homepage extends StatefulWidget {
  //homepage(Key? key) : super(key: key);
 
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<homepage> {
  final ScrollController _controller = ScrollController();
  final _formKey = GlobalKey<FormState>();
  int counter = 0;
  late bool st;
  int y = 10;
  List<ProductSelect> Mapmanu = [];

  final item1 = <dynamic>[
    Productprice(
        categoriesproduct: 'Food',
        productname: 'Pad Thai',
        image:
            'https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg',
        price: 255),
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
            'https://s359.thaibuffer.com/pagebuilder/b8414c05-6bb1-4d38-afe6-ee0e7077a080.jpg',
        price: 220),
    Productprice(
        categoriesproduct: 'Curries',
        productname: 'Sun-dried shrimp salad',
        image:
            'https://www.easycookingmenu.com/media/k2/items/cache/905cf51f8ae04225d8794e7707be5d97_XL.jpg',
        price: 75),
    Productprice(
        categoriesproduct: 'Salad',
        productname: ' Chicken Green Curry',
        image:
            'https://www.easycookingmenu.com/media/k2/items/cache/be2c0e4bc68e97336862a76636fd8047_XL.jpg',
        price: 100),
    Productprice(
        categoriesproduct: 'Soup',
        productname: ' Chicken Green Curry',
        image:
            'https://www.easycookingmenu.com/media/k2/items/cache/600085de8ec319c3ad7a50be991624bf_XL.jpg',
        price: 130),
  ];

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
            bool st;
            var tasks = context.read<provider_app>().tasks;
            var addOnlist = Provider.of<addOn>(context);
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
                      print(index);
                      
                        
                        if (y == 10) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Container(
                                    height: 500,
                                    width: 500,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: addOnlist.addno1.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 10, 0, 0),
                                                  child: Container(
                                                    child: Text(
                                                      "${addOnlist.addno1[index].nameaddon}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .subtitle1!
                                                          .merge(
                                                            const TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                const Divider(
                                                  
                                                  height: 10,
                                                  thickness: 2,
                                                  indent: 0,
                                                  endIndent: 0,
                                                  color: Color.fromARGB(
                                                      255, 255, 110, 110),
                                                ),
                                                const SizedBox(
                    width: 10,
                  ),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                  child: Container(
                                                      child: ListView.builder(
                                                          shrinkWrap: true,
                                                          itemCount: addOnlist
                                                              .addno1[index]
                                                              .Subaddon
                                                              .length,
                                                          itemBuilder:
                                                              (BuildContext
                                                                      context,
                                                                  int index2) {
                                                            return Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                                      
                                                              children: [
                                                                Padding(
                                                                  //bossth
                                                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                                  
                                                                  child:Checkbox(
                                                                    
                                                                    value:addOnlist.addno1[index].Subaddon[index2].check_status, 
                                                                    onChanged: (bool? value) {
                                                                      setState(() {
                                                                        addOnlist.addno1[index].Subaddon[index2].check_status = value!;
                                                                      });
                                                                    },
                                                                    
                                                                    
                                                                  )
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                                  child: Text(
                                                                    "${addOnlist.addno1[index].Subaddon[index2].subNameAddOn}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '${addOnlist.addno1[index].Subaddon[index2].priceAddOn}',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'Inter',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ],
                                                            );
                                                          })),
                                                ),
                                              ]),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              });
                        } else {
                          
                          setState(() {
                            context.read<provider_app>().add(tasks1(
                                name: "${item[index].productname}",
                                price: item[index].price,
                                images: "${item[index].image}",
                              ));
                          });
                        }

                        //print('name' + "${item[index].productname}");
                        //print(Mapmanu);
                      
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
  // chackboxst(String status ){
  //   switch(status) {
  //     case 'true':
  //       // print('Ordering');
  //       return true;
  //       break; // The switch statement must be told to exit, or it will execute every case.
  //     case'false':
  //       // print('Pay');
  //       return false;
  //       break;
  //     default:
  //       // print('');
  //       return ;
  //   }
  // }
}
