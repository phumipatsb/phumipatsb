import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/provider_app.dart';
import 'util.dart';

enum SampleItem { English, Thai, Japanese, Chinese }

class languagepd extends StatefulWidget {
  @override
  State<languagepd> createState() => _languagepdState();
}

class _languagepdState extends State<languagepd> {
  SampleItem? selectedMenu;
  String selanguage = "EN";
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      initialValue: selectedMenu,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      offset: Offset(60, 0), // SET THE (X,Y) POSITION
      // shadowColor: Colors.black,
      // Callback that sets the selected popup menu item.
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
          // print(selectedMenu);
          if (item == SampleItem.English) {
            // print('EN');
            selanguage = "EN";
            context.read<provider_Language>().updaet_Language(selanguage);
          }
          if (item == SampleItem.Thai) {
            // print('TH');
            selanguage = "TH";
            context.read<provider_Language>().updaet_Language(selanguage);
          }
          if (item == SampleItem.Japanese) {
            // print('JP');
            selanguage = "JP";
            context.read<provider_Language>().updaet_Language(selanguage);
          }
          if (item == SampleItem.Chinese) {
            // print('ZH');
            selanguage = "ZH";
            context.read<provider_Language>().updaet_Language(selanguage);
          }
        });
      },

      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          child: Text('Language'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.English,
          child: Text('English'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.Thai,
          child: Text('Thai'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.Japanese,
          child: Text('Japanese'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.Chinese,
          child: Text('Chinese'),
        ),
      ],
      child: Center(
        child: Text(selanguage,
            style: const TextStyle(
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                color: Colors.black)),
      ),
    );
  }
}
