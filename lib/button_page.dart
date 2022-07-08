import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:listview_class9/contactlist.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button"),),
      body: Center(
        child: InkWell(onTap: () => {
          Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ContactList())), 
        },
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [BoxShadow(
              blurRadius: 5,
            offset: Offset(0, 10),           
            ),
            
          ],
          color: Colors.white),
          child: Row(
            children: [
              Container(               
                height: 50,
                width: 100,
                decoration: BoxDecoration(color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(95),
                  bottomLeft: Radius.circular(95),
                  bottomRight: Radius.circular(200)
                )),
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 17),
                child: Text("Submit",
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Icon(Icons.home_filled)

            ],
          ),
        ),
        ),
      ),
    );
  }
}