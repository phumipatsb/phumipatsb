import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:test1/RAW/coloer/hex.dart';
import '../models/provider_app.dart';
import '../models/compronan.dart';
import '../pull_from_api/provider_Api.dart';
import 'package:group_radio_button/group_radio_button.dart';

class homepage extends StatefulWidget {
  //homepage(Key? key) : super(key: key);
    

  @override
  
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<homepage> {
  final ScrollController _controller = ScrollController();
  final _formKey = GlobalKey<FormState>();
  int _paymentType = 1;
  var _oneValue = '';

  

  
 
  List<addonofs> chooseAddon = [];
  
  bool checkboxValue = false;
  int y = 10;
  TextEditingController textarea = TextEditingController();

  // final item = <dynamic>[
  //   Productprice(
  //       statusaddno: true,
  //       categoriesproduct: 'Food',
  //       productname: 'Pad Thai',
  //       image:
  //           'https://s359.thaibuffer.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg',
  //       price: 255),
  //   Productprice(
  //       statusaddno: false,
  //       categoriesproduct: 'Food',
  //       productname: 'PSpicy fried chicken',
  //       image:
  //           'https://fourleaf-datacenter.s3-ap-southeast-1.amazonaws.com/partner1/media/dining_item/ข้าวกระเพราไก่_VVLSQJ8S3XHM.jpg',
  //       price: 220),
  //   Productprice(
  //       statusaddno: true,
  //       categoriesproduct: 'Curries',
  //       productname: 'Sun-dried shrimp salad',
  //       image:
  //           'https://www.easycookingmenu.com/media/k2/items/cache/905cf51f8ae04225d8794e7707be5d97_XL.jpg',
  //       price: 75),
  //   Productprice(
  //       statusaddno: false,
  //       categoriesproduct: 'Salad',
  //       productname: ' Chicken Green Curry',
  //       image:
  //           'https://www.easycookingmenu.com/media/k2/items/cache/be2c0e4bc68e97336862a76636fd8047_XL.jpg',
  //       price: 100),
  //   Productprice(
  //       statusaddno: true,
  //       categoriesproduct: 'Soup',
  //       productname: ' Chicken Green Curry',
  //       image:
  //           'https://www.easycookingmenu.com/media/k2/items/cache/600085de8ec319c3ad7a50be991624bf_XL.jpg',
  //       price: 130),
  // ];

  @override
  void initState() {
    super.initState();
    final postModel = Provider.of<provider_api>(context, listen: false);
    postModel.getdata();
  }
  Widget build(BuildContext context) {
    final postModel = Provider.of<provider_api>(context);
    var data = postModel.post?.data;
    var _groupOptionList = postModel.post?.groupOptionList;

    int selected = context.watch<provider_app>().index1;
    
  int selected_sub_cat = context.watch<provider_app>().index2;
    // print("index1 :"+selected.toString());
    // print("index2 :"+ selected_sub_cat.toString());

    
    return postModel.lodeing?
    Center(
            child: Container(
              child: SpinKitThreeBounce(itemBuilder: ((context, index) {
                return DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:
                            index.isInfinite ? Colors.red : Colors.red[100]));
              })),
            ),
          )


        
       : Scrollbar(
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
          itemCount: data?[selected]
                                    .items?[selected_sub_cat]
                                    .items
                                    ?.length,
          itemBuilder: (BuildContext context, int index) {
            bool st;
            var tasks = context.read<provider_app>().tasks;
            //var tasks2 = context.read<provider_app>().tasks2;
            //var addOnlist = Provider.of<addOn>(context);
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16.0,
                ),
                color: Colors.white,
              ),
              child: Wrap(
                children: [
                  GestureDetector(
                    onTap: () {
                      var mapObj = postModel.post!.groupOptionList;
                      //print(mapObj);
                      
                      
                           var Options = '${data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions}' ;

                           

                      //print('${data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions}');
                      //  print('${_groupOptionList?['']}');

                      if (Options != '')  {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Container(
                                height: 600,
                                width: 500,
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.close,
                                          color: Colors.black54,
                                          size: 45,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          clecaaddon();
                                        },
                                      ),
                                    ),
                                    Container(
                                      height: 370,
                                      width: 500,
                                      child: ListView.builder(
                                        shrinkWrap: false,
                                        itemCount:postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]!.length,
                                        itemBuilder:
                                            (BuildContext context, int index2) {
                                          return Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    "${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index2].questionTh}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1!
                                                        .merge(
                                                          const TextStyle(
                                                            fontSize: 35,
                                                            fontWeight:
                                                                FontWeight.w700,
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
                                                choiceoptions(
                                                    "${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index2].mode}",
                                                    selected,selected_sub_cat,index, index2),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      padding: EdgeInsets.all(10),
                                      child: Text('NOTE',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(0),
                                      child: Column(
                                        children: [
                                          TextField(
                                              controller: textarea,
                                              keyboardType:
                                                  TextInputType.multiline,
                                              maxLines: 4,
                                              autocorrect: true,
                                              decoration: InputDecoration(
                                                hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                                filled: true,
                                                fillColor: Colors.white70,
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                        10, 0, 0, 0),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8.0)),
                                                  borderSide: BorderSide(
                                                      color: Colors.red,
                                                      width: 2),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8.0)),
                                                  borderSide: BorderSide(
                                                      color: Colors.green),
                                                ),
                                              )),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: 300,
                                            height: 50.0,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  //print(textarea.text);
                                                  setState(
                                                    () {
                                                      context
                                                          .read<provider_app>()
                                                          .addtasks1(
                                                            tasks1(
                                                              name: "${data?[selected].items?[selected_sub_cat].items?[index].name}",
                                                              price: data?[selected].items?[selected_sub_cat].items?[index].price,
                                                              images: '${data?[selected].items?[selected_sub_cat].items?[index].picture}',
                                                              idItem: '${data?[selected].items?[selected_sub_cat].items?[index].itemId}',
                                                              addonSelect: chooseAddon,
                                                                  
                                                            ),
                                                          );

                                                      clecaaddon();
                                                    },
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color.fromARGB(
                                                      255,
                                                      255,
                                                      111,
                                                      111), // background
                                                ),
                                                child: Text("Confirm",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        setState(
                          () {
                            //print('boss');
                            
                            context.read<provider_app>().addtasks1(
                                  tasks1(
                                    name: "${data?[selected].items?[selected_sub_cat].items?[index].name}",
                                    price: data?[selected].items?[selected_sub_cat].items?[index].price,
                                    images: '${data?[selected].items?[selected_sub_cat].items?[index].picture}',
                                    idItem: '${data?[selected].items?[selected_sub_cat].items?[index].itemId}',
                                    addonSelect: [],
                                  ),
                                );
                          },
                        );
                      }

                     
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
                            '${data?[selected].items?[selected_sub_cat].items?[index].picture}',
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
                                '${data?[selected].items?[selected_sub_cat].items?[index].name}',
                                overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .merge(
                                      const TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                '${data?[selected].items?[selected_sub_cat].items?[index].price}.-',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .merge(
                                      TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 255, 111, 111),
                                      ),
                                    ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }       

  choiceoptions(String status, int selected,int selected_sub_cat,int index ,int index3) {
    print(status);
    
    if (status == "klklk") {
      //var addOnlist = Provider.of<addOn>(context);
      var _result;
      var _selectedOption;
      int b=0;
      final postModel = Provider.of<provider_api>(context);
      var data = postModel.post?.data;
      var selectedOption;
      var group;
       int selectedRadio = 0 ;
      
                             

      //var _status = ["Pending", "Released", "Blocked", "Blocked", "Blocked", "Blocked", "Blocked", "Blocked"];
      String _verticalGroupValue = "0";
      String _singleValue = "";
      void initState(){
        super.initState();
        selectedOption = '';

      }

      setSelectRadio( var val){
        setState(() {
           selectedOption = val;
        });
      }

      
      return Container(
       
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items!.length,
            itemBuilder: (BuildContext context, int index2) {
              return Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Align(
                    //   alignment: AlignmentDirectional(10, 0),
                      
                    //   child: Container(
                    //     width: 100,
                    //     height: 50,
                    //     child: RadioListTile(title: Text("${addOnlist.addno1[indexs].Subaddon[index2].subNameAddOn}"),
                    //     value: addOnlist.addno1[indexs].Subaddon[index2].subNameAddOn,
                    //     groupValue: _oneValue,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         _oneValue = value.toString();
                    //       });
                    //     },)
                    //   ),
                    // ),
                    Container(
                      width: 450,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                

                                Radio(
                                  value: "${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].choice}",
                                  groupValue: selectedRadio,
                                  onChanged: (value) => 
                                  setState(() {
                                    print("ob");
                                    selectedRadio = 1;
                                  }),
                              
                            ),  

                                


                                                  
                             



                                Text(
                              "${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].choice}",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),

                              ],
                            ),
                            
                          ),
                          
                          Text(
                              "${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].price}",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          );
    } else {
      //var addOnlist = Provider.of<addOn>(context);
      final postModel = Provider.of<provider_api>(context);
      var data = postModel.post?.data;
      bool st5 =false ;

      return Container(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items!.length,
          itemBuilder: (BuildContext context, int index2) {
            return Align(
              alignment: AlignmentDirectional(0.4, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(10, 0),
                    child: Container(
                      width: 50,
                      child: FormField<bool>(
                        builder: (state) {
                          return Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                    
                                    value: st5,
                                    onChanged: (bool? value) {
                                      setState(
                                        () {
                                          st5 = value!;
                                          state.didChange(value);
                                          

                                          if (value == true) {
                                            
                                            (chooseAddon.add(addonofs(
                                                price: postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].price!,
                                                subNameAddOn:"${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].choice}",
                                                ID: "${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].id!}",
                                                nameaddon:"${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].questionTh}")));
                                            
                                          }
                                          if (value == false) {
                                            // context
                                            //     .read<provider_app>()
                                            //     .deleteaddon(addOnlist.addno1[indexs].Subaddon[index2].ID);
                                            deleteaddon("${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].id!}");
                                            //print(chooseAddon);
                                          } else {}
                                           cleccheckbox(value);
                                        },
                                        

                                       
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 425,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].choice}",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        Text(
                            "${postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index3].items![index2].price}",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }
  }

  void deleteaddon(String id) {
    chooseAddon.removeWhere((item) => item.ID == id);
  }

  clecaaddon() {
    chooseAddon = [];
    //print("clecaaddon");
    //print(chooseAddon);
  }

  bool cleccheckbox(bool value) {
    value = false;
  return value;
  }
  
  

   radiobt(int selected ,int  selected_sub_cat , int index ,int index2) {
     final postModel = Provider.of<provider_api>(context);
      var data = postModel.post?.data;
      int selectedRadio =0;
      

    // ignore: dead_code
    for(int i = 0; i <postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index].items![index2].choice!.length; i++)
        {
          //print(postModel.post!.groupOptionList![data?[selected].items?[selected_sub_cat].items?[index].itemGroupOptions]![index].items![index2].choice!.length);
         return Radio<int>(
          value: i,
          groupValue: selectedRadio,
          onChanged: (value) => 
          setState(() {
            selectedRadio =1;
          }),
      
    );  


        };
  }
  
  
}
