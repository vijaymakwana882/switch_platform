import 'package:flutter/material.dart';

class AddNewContact extends StatefulWidget {
  const AddNewContact({super.key});

  @override
  State<AddNewContact> createState() => _AddNewContactState();

  void add(BuildContext context) {}
}

class _AddNewContactState extends State<AddNewContact> {
  final TextEditingController fname = TextEditingController();
  final TextEditingController bio = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            ListView.builder(
              itemCount: index,
              itemBuilder: (context, index) {
                AddNewContact();
              },
            );
          },
        );
        // return ListTile(
        //   leading: Image(
        //     image: AssetImage('assets/one.png'),
        //   ),
        //   title: Text('hello'),
        //   subtitle: Text(bio.text),
        //   trailing: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.call),
        //   ),
        // );
      },
    );
  }
}
