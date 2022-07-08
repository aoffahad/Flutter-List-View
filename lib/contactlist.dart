import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  List contactlist = [
    {'name': 'Md Omar Faruque Fahad', 'phone': '01610182028'},
    {'name': 'Rafiq', 'phone': '01610182028'},
    {'name': 'Md Omar Faruque Fahad', 'phone': '01610182028'},
    {'name': 'Jobbar', 'phone': '01610182028'},
    {'name': 'Md Omar Faruque Fahad', 'phone': '01610182028'},
    {'name': 'Rahim', 'phone': '01610182028'},
    {'name': 'Md Omar Faruque Fahad', 'phone': '01610182028'},
    {'name': 'Karim', 'phone': '01610182028'},
    {'name': 'Md Omar Faruque Fahad', 'phone': '01610182028'},
    {'name': 'Md Omar Faruque Fahad', 'phone': '01610182028'},
    {'name': 'Mustak', 'phone': '01610182028'},
    {'name': 'Md Omar Faruque Fahad', 'phone': '01610182028'},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contact List"),
      ),
      body: ListView.builder(
          itemCount: contactlist.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ListTile(
                    leading: CircleAvatar(
                      child: Text(contactlist[index]['name'][0]),
                    ),
                    title: Text(contactlist[index]['name']),
                    subtitle: Text(contactlist[index]['phone']),
                    trailing:
                        // Icon(Icons.delete),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                contactlist.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete))),
              ),
            );
          }),
    );
  }
}
