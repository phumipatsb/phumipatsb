import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/material_new_order/compronan.dart';
import 'package:test1/pull_from_api/orderlist.dart';
import 'package:test1/RAW/SVG/svg.dart';
import 'package:test1/RAW/transform/transform.dart';
import 'compronan.dart';
import 'package:get/get.dart';
import 'package:test1/getx/tandata_meun.dart';
import '../models/provider_app.dart';

class layoutWidget extends StatefulWidget {
  const layoutWidget({Key? key}) : super(key: key);
  
  @override
  State<layoutWidget> createState() => _layoutWidgetState();
}

class _layoutWidgetState extends State<layoutWidget> {
  
  List<Map<String, dynamic>> gridMap = [
    // {
    //   "title": "ITEM NAME",
    //   "price": "255",
    //   "images":
    //       "https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg"
    //       ,
    // },
    // {
    //   "title": "ITEM NAME",
    //   "price": "245",
    //   "images":
    //       "https://s359.thaibuffer.com/pagebuilder/b8414c05-6bb1-4d38-afe6-ee0e7077a080.jpg",
    // },
    
  ];
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<provider_app>().tasks;
    print(tasks);
    return
     GetX<Tandata>(builder: (controller1){
      return
    Container(
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            print(controller1);
        return 
        tasks.length<=0?
        Container(child: Text('NO DATA'),):
        ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, int index) {
            
            return Container(
                height: 90.0,
                child: Stack(children: [
                  Container(
                      width: constraints.maxWidth,
                      child: Container(
                          width: 308.0,
                          height: 186.0,
                          child: Stack(
                              fit: StackFit.expand,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                    left: 0.0,
                                    top: 0.0,
                                    right: null,
                                    bottom: null,
                                    width: 308.0,
                                    height: 74.0,
                                    child: Container(
                                      width: 308.0,
                                      height: 74.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Container(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  left: 10.0,
                                  top: 8.0,
                                  right: null,
                                  bottom: null,
                                  width: 55.0,
                                  height: 55.0,
                                  child: Container(
                                    width: 55.0,
                                    height: 55.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                      ),
                                      child: Image.network(
                                        tasks[index].images,
                                        height: 170,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                   padding: const EdgeInsets.fromLTRB(70, 10,0, 0),
                    child: Column(
                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                         
                      children: [
                       
                    Text(
                      
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${gridMap.elementAt(index)['price']}"+"-.",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.pink[200],
                              
                            ),
                          ),
                          
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    
                  ],
                    )



                                ),
                                Positioned(
                                  left: 212.0,
                                  top: 8.0,
                                  right: null,
                                  bottom: null,
                                  width: 90.0,
                                  height: 27.0,
                                  child: Container(
                                    width: 90.0,
                                    height: 27.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 217, 217, 217),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 214.0,
                                  top: 10.0,
                                  right: null,
                                  bottom: null,
                                  width: 23.0,
                                  height: 23.0,
                                  child: Container(
                                    width: 23.0,
                                    height: 23.0,
                                    child: SvgWidget(painters: [
                                      SvgPathPainter.fill()
                                        ..addPath(
                                            'M23 11.5C23 17.8513 17.8513 23 11.5 23C5.14873 23 0 17.8513 0 11.5C0 5.14873 5.14873 0 11.5 0C17.8513 0 23 5.14873 23 11.5Z')
                                        ..color =
                                            Color.fromARGB(255, 255, 110, 110),
                                    ]),
                                  ),
                                ),
                                Positioned(
                                  left: 276.0,
                                  top: 10.0,
                                  right: null,
                                  bottom: null,
                                  width: 23.0,
                                  height: 23.0,
                                  child: Container(
                                    width: 23.0,
                                    height: 23.0,
                                    child: SvgWidget(painters: [
                                      SvgPathPainter.fill()
                                        ..addPath(
                                            'M23 11.5C23 17.8513 17.8513 23 11.5 23C5.14873 23 0 17.8513 0 11.5C0 5.14873 5.14873 0 11.5 0C17.8513 0 23 5.14873 23 11.5Z')
                                        ..color =
                                            Color.fromARGB(255, 255, 110, 110),
                                    ]),
                                  ),
                                ),
                                Positioned(
                                  left: 219.0,
                                  top: 9.0,
                                  right: null,
                                  bottom: null,
                                  width: 19.0,
                                  height: 29.0,
                                  child: Text(
                                    '''+''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.2102272033691406,
                                      fontSize: 20.0,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 255, 255, 255),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 283.0,
                                  top: 9.0,
                                  right: null,
                                  bottom: null,
                                  width: 15.0,
                                  height: 29.0,
                                  child: Text(
                                    '''-''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.2102272033691406,
                                      fontSize: 20.0,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 255, 255, 255),

                                      /* letterSpacing: 0.0, */
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 255.0,
                                  top: 14.0,
                                  right: null,
                                  bottom: null,
                                  width: 12.0,
                                  height: 23.0,
                                  child: Text(
                                    '''1''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.2102272033691406,
                                      fontSize: 15.0,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0.0,
                                  top: 0.0,
                                  right: 0.0,
                                  bottom: 0.0,
                                  width: null,
                                  height: null,
                                  child: LayoutBuilder(builder:
                                      (BuildContext context,
                                          BoxConstraints constraints) {
                                    double percentWidth = 0.05194805194805195;
                                    double scaleX =
                                        (constraints.maxWidth * percentWidth) /
                                            16.0;

                                    double percentHeight = 0.08602150537634409;
                                    double scaleY = (constraints.maxHeight *
                                            percentHeight) /
                                        16.0;
                                    return Stack(children: [
                                      TransformHelper.translateAndScale(
                                          translateX: constraints.maxWidth *
                                              0.9090909090909091,
                                          translateY: constraints.maxHeight *
                                              0.24731182795698925,
                                          translateZ: 0,
                                          scaleX: scaleX,
                                          scaleY: scaleY,
                                          scaleZ: 1,
                                          child: Container(
                                            width: 16.0,
                                            height: 16.0,
                                            child: SvgWidget(painters: [
                                              SvgPathPainter.fill()
                                                ..addPath(
                                                    'M15.2 3.20088L11.2 3.20088L11.2 1.86497C11.1812 1.35286 10.9602 0.86909 10.5853 0.519701C10.2104 0.170312 9.7122 -0.0161817 9.2 0.00110267L6.8 0.00110267C6.2878 -0.0161817 5.78965 0.170312 5.41474 0.519701C5.03984 0.86909 4.81877 1.35286 4.8 1.86497L4.8 3.20088L0.8 3.20088C0.587827 3.20088 0.384344 3.28516 0.234315 3.43518C0.0842854 3.5852 7.10543e-16 3.78867 0 4.00083C3.55271e-16 4.21299 0.0842854 4.41645 0.234315 4.56647C0.384344 4.71649 0.587827 4.80077 0.8 4.80077L1.6 4.80077L1.6 13.6002C1.6 14.2366 1.85286 14.847 2.30294 15.2971C2.75303 15.7472 3.36348 16 4 16L12 16C12.6365 16 13.247 15.7472 13.6971 15.2971C14.1471 14.847 14.4 14.2366 14.4 13.6002L14.4 4.80077L15.2 4.80077C15.4122 4.80077 15.6157 4.71649 15.7657 4.56647C15.9157 4.41645 16 4.21299 16 4.00083C16 3.78867 15.9157 3.5852 15.7657 3.43518C15.6157 3.28516 15.4122 3.20088 15.2 3.20088ZM6.4 1.86497C6.4 1.73698 6.568 1.60099 6.8 1.60099L9.2 1.60099C9.432 1.60099 9.6 1.73698 9.6 1.86497L9.6 3.20088L6.4 3.20088L6.4 1.86497Z')
                                                ..color = Color.fromARGB(
                                                    255, 255, 110, 110),
                                            ]),
                                          ))
                                    ]);
                                  }),
                                ),
                              ])))
                ]));
          },
        );
      }),
    );
  }
);
  }
}
