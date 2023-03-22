import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:test1/models/compronan.dart';
import '../models/provider_app.dart';

class Select_Member extends StatefulWidget {
  @override
  State<Select_Member> createState() => _Select_MemberState();
}

class _Select_MemberState extends State<Select_Member> {
   TextEditingController find = TextEditingController();

   List<mamber> member1 =[
    mamber(name: "boss", telephone: "0969174870"),
    mamber(name: "mos", telephone: "0962895803"),
    mamber(name: "mi", telephone: "0661140738"),
    mamber(name: "raek", telephone: "0962895803"),
    mamber(name: "mek", telephone: "0928093088"),
    mamber(name: "mim", telephone: "0637207901"),
    mamber(name: "too", telephone: "0638058119"),
    mamber(name: "true", telephone: "0856728303"),
    mamber(name: "data", telephone: "0968727690"),
    mamber(name: "bass", telephone: "0956701479"),
    mamber(name: "top", telephone: "0982458790"),

   ];
  @override
  Widget build(BuildContext context) {
    var seachitem;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(140, 10, 0, 0),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Container(
                          child: SvgPicture.asset(
                            'assets/images/Member.svg',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                        child: Text("Select Member",
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/close.svg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        SizedBox(
          width: 400,
          height: 45,
          child: TextField(
          
          controller: find,
          decoration: InputDecoration(
          hintText: 'Search member by name or telephone',
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white70,
          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          enabledBorder: OutlineInputBorder(
           borderRadius:
             BorderRadius.all(Radius.circular(8.0)),
               borderSide:
                BorderSide(color: Colors.black45, width: 2),
              ),
             focusedBorder: OutlineInputBorder(
               borderRadius:
             BorderRadius.all(Radius.circular(8.0)),
             borderSide: BorderSide(color: Colors.pink.shade300),
            ), 
         ),
         onChanged: seachitem,
         ),
         
         ),

      Expanded(
        child: ListView.builder(
          itemCount: member1.length,
          itemBuilder: (context,index){
            final mamberse = member1[index];

            return Container(
              width: 200,
              height: 50,
              child: Row(
                children: [
                  Text(mamberse.name),
                  Text(mamberse.telephone)
                ],
              ),
            );
          }),
      )
      ],
    );
  }
}
