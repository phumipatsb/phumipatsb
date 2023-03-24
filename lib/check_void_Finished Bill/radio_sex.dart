import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/RAW/coloer/hex.dart';

class MyRadioOption<T> extends StatelessWidget {
  
    final T value;
    final T? groupValue;
    final String label;
    final String text;
    final ValueChanged<T?> onChanged;
  
    const MyRadioOption({
      required this.value,
      required this.groupValue,
      required this.label,
      required this.text,
      required this.onChanged,
    });
  
    Widget _buildLabel() {
      final bool isSelected = value == groupValue;
  
      return Container(
        width: 40,
        height: 40,
        decoration: ShapeDecoration(
          shape: CircleBorder(
            side: BorderSide(
              color: HexColor(BorderSide1),
            ),
          ),
          color: isSelected ? HexColor(radiomali) : Colors.white,
        ),
        child: value == "male"?Center(child: SvgPicture.asset(
                          'assets/images/male.svg',
                          height: 30,
                          width: 30,
                        ),):Center(child: SvgPicture.asset(
                          'assets/images/female.svg',
                          height: 30,
                          width: 30,
                        ),),
        // child: Center(
          

        //   child: Text(
        //     value.toString(),
        //     style: TextStyle(
        //       color: isSelected ? Colors.white : Colors.teal,
        //       fontSize: 24,
        //     ),
        //   ),
        // ),
      );
    }
  
    Widget _buildText() {
      return Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 24),
      );
    }
  
    @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(5),
        child: InkWell(
          onTap: () => onChanged(value),
          splashColor: HexColor(radiomali).withOpacity(0.5),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                _buildLabel(),
                // const SizedBox(width: 10),
                // _buildText(),
              ],
            ),
          ),
        ),
      );
    }
    iconla(var i){
      
    return Container();

  }

    
  }

   