import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:listview_class9/button_page.dart';

class StudentList extends StatefulWidget {
  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  List<String> studentlist = ["Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad","Fahad",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List"),
      
      actions: [
        
      
      
      ],),
      

      body: ListView.builder(
        itemCount: studentlist.length,
        itemBuilder: (context,i)=>Card(color: Colors.greenAccent,
        child: ListTile(
          onTap: () {
           Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ButtonPage()));
          },
          trailing: Icon(Icons.call),
          leading: CircleAvatar(child: Text(studentlist[i][0])), //First i = Index,second bracket means the strng in index number 0
          title: Text(studentlist[i]),
        ),
      )),
      
    );
  }
}