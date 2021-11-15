import 'package:flutter/material.dart';

// abstract class HomeDetailsProtocol{
//   void getName(String name);
// }
class HomeDetails extends StatelessWidget {
  HomeDetails({Key? key,}) : super(key: key);
  // HomeDetailsProtocol? homeDetailsProtocol;

  String name = 'Jhon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: MaterialButton(
          child: Text("Submit"),
          onPressed: (){
            Navigator.of(context).pop("Jonny");
          },
        ),
      ),
    );
  }

  returnName(BuildContext context){
    // widget.homeDetailsProtocol!.getName(name);
    Navigator.pop(context);
  }
}
