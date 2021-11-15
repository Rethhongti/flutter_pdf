import 'package:flutter/material.dart';
import 'package:flutter_callback/category_page.dart';
import 'package:flutter_callback/home_details.dart';

class HomeScreen extends StatelessWidget implements HomeDetailsProtocol{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Back"),
      ),
      body: Column(
        children: [
          ItemCard(
            title: "Hello",
            onPress: () {
              print("Hello 1");
            },
          ),
          ItemCard(
            title: "Hello",
            onPress: () async{
              // print("Hello 2");
              var x = await Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetails(),));
              print("====> $x");
              // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetails()));
              // HomeDetails details = HomeDetails();
            },
          ),
          Center(
            child: MaterialButton(
              child: Text("Submit"),
              onPressed: (){
                CategoryPage category = CategoryPage();
                Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(homeDetailsProtocol:this,),));
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void getName(String name) {
    print("=====> $name");
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key,
    required this.title,
    required this.onPress
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.message),
      title: Text(title),
      onTap: onPress,
    );
  }
}