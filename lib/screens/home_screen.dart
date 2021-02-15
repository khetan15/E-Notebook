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


      body:Column(children: <Widget>[
      Row(
        //ROW 1
          children: [
      Container(
        margin: EdgeInsets.all(8.0),
        height: 100.0,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.deepOrange)),
          onPressed: () {},
          padding: EdgeInsets.all(10.0),
          color: Colors.deepOrange,
         textColor: Colors.white,
         child: Text("Subject 1",
             style: TextStyle(fontSize: 39)),
        ),
        ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 100.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.deepOrange)),
                onPressed: () {},
                padding: EdgeInsets.all(10.0),
                color: Colors.deepOrange,
                textColor: Colors.white,
                child: Text("Subject 2",
                style: TextStyle(fontSize: 39)),
              ),
            ),

       ],
      ),
      Row(
        //ROW 1
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            height: 100.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.deepOrange)),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Colors.deepOrange,
              textColor: Colors.white,
              child: Text("Subject 3",
                  style: TextStyle(fontSize: 39)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 100.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.deepOrange)),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Colors.deepOrange,
              textColor: Colors.white,
              child: Text("Subject 4",
                  style: TextStyle(fontSize: 39)),
            ),
          ),

        ],
      ),
     ],),
    );


  }
}