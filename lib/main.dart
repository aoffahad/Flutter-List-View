import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_class9/student_list.dart';

void main() {
  runApp(MyApps());
}
class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentList(),
    );
  }
}