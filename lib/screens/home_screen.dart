import 'package:flutter/material.dart';
import 'package:fluttersignature/components/NavDrawer.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      drawer: NavDrawer(),
      appBar: AppBar(
          backgroundColor: Colors.deepOrange[900],
          title: Text('Classes')
      ),
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.add),
        backgroundColor:Colors.deepOrange[900],
        onPressed: (){
          setState(() async{
//            inputList=await inputDialog(context);
//            assignmentList.add(Assignment(title: inputList[0],description:inputList[1] ));
          });
        },
      ),
    );
  }
}