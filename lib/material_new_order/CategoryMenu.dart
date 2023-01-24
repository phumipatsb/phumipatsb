import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/provider_category.dart';

class CategoryMenu extends StatefulWidget {
  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  @override
  Widget build(BuildContext context) {
    var indexcat=0;
    var Categories1 = Provider.of<Categories>(context);
    
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Container(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Categories1.categories.length,
                            itemBuilder: (context, int index1) {
                              return GestureDetector(
                                onTap: () {
                                  
                                  
                                    indexcat = index1;
                                    print(indexcat);
                                },
                                child: Container(
                                    child: Column(children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 20, 0, 0),
                                    child: Container(
                                        child: CircleAvatar(
                                      radius: 40,
                                      child: Image.network(
                                        "${Categories1.categories[index1].Image}",
                                      ),
                                    )),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 20, 0, 0),
                                    child: Container(
                                      child: Text(
                                        "${Categories1.categories[index1].Categoryname}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .merge(
                                              const TextStyle(
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                      ),
                                    ),
                                  ),
                                ])),
                              );
                            })),
                  ),
                  const Divider(
            height: 10,
            
            thickness: 2,
            indent: 0,
            endIndent: 0,
            color: Color.fromARGB(255, 255, 110, 110),
          ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Categories1.categories[indexcat].Categoryname.length,
                            itemBuilder: (context, int index2) {
                              return Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 5, 0, 0),
                                  child: Container(
                                    child: Text(
                                      "${''}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .merge(
                                            const TextStyle(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                    ),
                                  ),
                                ),
                              );
                            })),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
