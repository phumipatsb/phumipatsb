import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class list_view_order extends StatefulWidget {
  const list_view_order({Key? key}) : super(key: key);

  @override
  State<list_view_order> createState() => _list_view_order();
}

class _list_view_order extends State<list_view_order> {
  final myProducts = List<String>.generate(10, (i) => 'ITEM NAME $i');
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
           child: Container(
             child: ListView.builder(
               itemCount: myProducts.length,
                 itemBuilder: (context, index) {
                   return Card(
                     key: ValueKey(myProducts[index]),
                     margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                   child: Padding(
                       padding: const EdgeInsets.all(10),
                       child: Text(myProducts[index])
                   ),
                   );
                 }
             ),
           ),
          );
        }
      ),

    );
  }
}
