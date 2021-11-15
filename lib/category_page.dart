import 'package:flutter/material.dart';

abstract class HomeDetailsProtocol{
  void getName(String name);
}

class CategoryPage extends StatefulWidget{
  HomeDetailsProtocol? homeDetailsProtocol;

  CategoryPage({Key? key,
    this.homeDetailsProtocol
  }) : super(key: key);


  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: Center(
        child: MaterialButton(
          child: Text("Submit"),
          onPressed: () => returnName(context)
        ),
      ),
    );
  }

  returnName(BuildContext context){
    widget.homeDetailsProtocol!.getName("Nick");
    Navigator.pop(context);
  }
}
