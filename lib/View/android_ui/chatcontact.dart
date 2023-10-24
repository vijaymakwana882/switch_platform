import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  final TextEditingController fname = TextEditingController();
  final TextEditingController bio = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
List ContactList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemBuilder: (context, index) {
        // return ListTile(
        //   leading: Icon(Icons.chat),
        //   title: Text('${fname.text}'),
        //   subtitle: Text('${phonenumber.text}'),
        //   trailing: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.chat),
        //   ),
        // );
      },
    ));
    ;
  }
}
