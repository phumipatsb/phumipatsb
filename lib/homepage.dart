import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';




class HomePage extends StatelessWidget {
  HomePage({Key? key}):super(key: key);
  final ScrollController _controller = ScrollController();
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "ITEM NAME",
      "price": "\$255",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$245",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/b8414c05-6bb1-4d38-afe6-ee0e7077a080.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$155",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/bb79a035-488d-452f-bb76-ac8a9265b906.jpg",
    },
    {
      "title": "ITEM NAME.",
      "price": "\$275",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/51940f43-bf97-4861-81b6-d88554202d85.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$25",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/55dacd45-29f4-4c02-a59c-313d2aaa3ab2.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$55",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/90156fe5-cdcc-42c3-806b-68f94be44796.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
    {
      "title": "ITEM NAME",
      "price": "\$27",
      "images":
          "https://s359.thaibuffer.com/pagebuilder/8fc42843-588a-4dad-82bb-dc8102097ba3.jpg",
    },
  ];
  @override
  
  Widget build(BuildContext context) {

    return Scrollbar(child: GridView.builder(
    
    
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 237,
        
      ),
       itemCount: gridMap.length,
       itemBuilder: (BuildContext context,int index){
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
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
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "${gridMap.elementAt(index)['price']}",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
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
                ),
              ),
            ],
          ),
        );
       }
      )
    );
  }
}


