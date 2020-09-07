import 'package:flutter/material.dart';
import 'package:fluttersignature/assignment.dart';
import 'package:fluttersignature/assignment_tile.dart';
import 'package:fluttersignature/assignment_list.dart';
class AssignmentScreen extends StatefulWidget {
  static const String id = 'assignment_screen';
  @override
  _AssignmentScreenState createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  List<String> inputList;
  bool _radioValue;
   List<Assignment>assignmentList=[Assignment(title:'SubjectName1',
    description:'Assignment Description'),Assignment(title:'SubjectName2',
    description:'Assignment Description')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
          backgroundColor: Colors.deepOrange[900],
          title: Text('Assignments')
      ),
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.add),
          backgroundColor:Colors.deepOrange[900],
        onPressed: (){
          setState(() async{
          inputList=await inputDialog(context);
          assignmentList.add(Assignment(title: inputList[0],description:inputList[1] ));
          });
        },
      ),
          body:Container(
        child: ListView.builder(itemBuilder: (context,index) {
          return AssignmentTile(title: assignmentList[index].title,description: assignmentList[index].description,);},
            itemCount:assignmentList.length)

            //AssignmentList(assignmentList)

    ),
    );
  }
   Future<List<String>> inputDialog(BuildContext context) async {
     List<String> inputs = [];
     return showDialog<List<String>>(
       context: context,
       barrierDismissible: false, // dialog is dismissible with a tap on the barrier
       builder: (BuildContext context) {
         return AlertDialog(
           title: Text('New Assignment'),
           content: StatefulBuilder(
           builder: (BuildContext context, StateSetter setState) {
             return Column(
                 children: <Widget>[
                   Expanded(
                       child: TextField(
                         autofocus: true,
                         decoration: InputDecoration(
                             labelText: 'Title', hintText: 'Subject1'),
                         onChanged: (value) {
                           inputs.add(value);
                         },
                       )), Expanded(
                       child: TextField(
                         autofocus: true,
                         decoration: InputDecoration(
                             labelText: 'Description',
                             hintText: 'Write an essay on lockdown'),
                         onChanged: (value) {
                           inputs.add(value);
                         },
                       )), Expanded(
                       child: TextField(
                         autofocus: true,
                         decoration: InputDecoration(
                             labelText: 'Send To',
                             hintText: 'student@gmail.com'),
                         onChanged: (value) {
                           inputs.add(value);
                         },
                       )), Expanded(
                     child: Text('Interface Controlled?'),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Radio(
                           value: true,
                           groupValue: _radioValue,
                           onChanged: (bool value) {
                             setState(() {
                               _radioValue = value;
                             },);
                           }
                       ),
                       Text(
                         'Yes',
                         style: new TextStyle(fontSize: 16.0),
                       ),
                       Radio(
                         value: false,
                         groupValue: _radioValue,
                         onChanged: (bool value) {
                           setState(() {
                             _radioValue = value;
                           },);
                         },
                       ),
                       Text(
                         'No',
                         style: new TextStyle(fontSize: 16.0,),),
                     ],)

                 ]
             );
           }
           ),
           actions: <Widget>[
             FlatButton(
               child: Text('Ok'),
               onPressed: () {
                 Navigator.of(context).pop(inputs);
               },
             ),
           ],
         );
       },
     );
   }
}
