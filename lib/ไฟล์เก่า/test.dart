import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SelectedData(),
      child: MyApp()
    )
  );
}

class SelectedData extends ChangeNotifier {
  
  bool _privacy = false;
  bool _termsOfUse = false;
  String _valueResult = '';
  
  bool get privacy => _privacy;
  bool get termsOfUse => _termsOfUse;
  String get valueResult => _valueResult;
  
  set privacy(bool value) {
    _privacy = value;
    notifyListeners();
  }
  
  set termsOfUse(bool value) {
    _termsOfUse = value;
    notifyListeners();
  }
  
  set valueResult(String value) {
    _valueResult = value;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ResultScreen(),
        ),
      ),
    );
  }
}

class TextScreen extends StatefulWidget {

const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {

  // text controller for message input
  TextEditingController textController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  // go to result screen
  void getResult(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    
    SelectedData data = Provider.of<SelectedData>(context, listen: false);
    textController.text = data.valueResult;
    
    //change state for privacy checkbox
    _onPrivacyChange(value) {
      data.privacy = value;
    }

    //change state for terms of use checkbox
    _onTermsOfUSeChange(value) {
      data.termsOfUse = value;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter data'),
      ),
      body: Consumer<SelectedData>(
        builder: (context, selectedData, child) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    controller: textController,
                    onChanged: (value) {
                      data.valueResult = value;
                    },
                    decoration: const InputDecoration(labelText: 'Message')),
                const SizedBox(height: 20),
                CheckboxListTile(
                  title: const Text('Privacy'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: selectedData.privacy,
                  onChanged: _onPrivacyChange,
                  contentPadding: EdgeInsets.zero,
                ),
                CheckboxListTile(
                  title: const Text('Terms of use'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: selectedData.termsOfUse,
                  onChanged: _onTermsOfUSeChange,
                  contentPadding: EdgeInsets.zero,
                ),
                ElevatedButton(
                    onPressed: () {
                      getResult(context);
                    },
                    child: const Text('Display result'))
              ],
            ));
        } 
      ),
    );
  }
}

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  @override
  Widget build(BuildContext context) {
    // navigation to next screen
    void _navToNextScreen(BuildContext context) async {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TextScreen()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: Consumer<SelectedData>(
        builder: (context, selectedData, child) {
          return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _navToNextScreen(context);
                },
                child: const Text('Enter data'),
              ),
              const SizedBox(height: 50),
              Text('Message: ${selectedData.valueResult}'),
              const SizedBox(height: 20),
              const Text('Checkboxes: '),
              Text('Privacy: ${selectedData.privacy}'),
              Text('Terms of Use: ${selectedData.termsOfUse}')
            ],
          ));
        } 
      ),
    );
  }
}