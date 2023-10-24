import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_platform/Model/contact_storage.dart';

import '../../Provider/contact_provider.dart';
import '../../main.dart';
import '../IosUi/iosplatform.dart';
import 'aftercontact.dart';
import 'chatcontact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String date = '';
  bool TapSwitch = true;
  bool Themeswitch = true;
  bool mainswitch = true;

  final TextEditingController fname = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
  final TextEditingController bio = TextEditingController();

  List<AddNewContact> get cont => [AddNewContact()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Platform Converter',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xffFFFBFE),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IosContactUi(),
                  ),
                );
              },
              icon: Icon(Icons.apple),
              color: Colors.black,
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.person_add_alt,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Text(
                  'CALLS',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'CHATS',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'SETTING',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: Color(0xffEADEFF),
                          child: Icon(Icons.add_a_photo_outlined,
                              size: 40, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        validator: (value) {
                          TextEditingController();
                        },
                        controller: TextEditingController(text: fname.text),
                        decoration: InputDecoration(
                          prefix: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Full Name ',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller:
                            TextEditingController(text: phonenumber.text),
                        decoration: InputDecoration(
                          prefix: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Phone Number',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefix: Icon(
                            Icons.chat,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Chat Conversation',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1974),
                            lastDate: DateTime(2075),
                          );
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            Icon(Icons.date_range_outlined,
                                color: Colors.black),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              date,
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          TimePickerDialog(
                            initialTime: TimeOfDay.now(),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.watch_later_outlined,
                                color: Colors.black),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Pick Time',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {
                                TextEditingController() = fname;
                                print(fname);
                              },
                              child: Text(
                                'SAVE',
                                style: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Tab(child: AddNewContact()),
            Tab(child: chat()),
            Tab(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.person,
                          ),
                          title: Text(
                            'Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          subtitle: Text('Update Profile Data'),
                          trailing: Switch(
                            value: TapSwitch,
                            onChanged: (bool value) {
                              setState(
                                () {
                                  TapSwitch = value;
                                },
                              );
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('object');
                          },
                          child: CircleAvatar(
                            maxRadius: 70,
                            backgroundColor: Colors.purpleAccent.shade100,
                            child: Icon(Icons.add_a_photo_outlined,
                                color: Colors.black, size: 40),
                          ),
                        ),
                        TextFormField(
                          controller: fname,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "Enter Your Name.....",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextFormField(
                          controller: bio,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "Enter Your Bio...",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                AddNewContact().add(context);
                                ContactStorage.add(cont as ContactStorage);
                                phonenumber.text;
                                fname.text;
                                bio.text;

                                Provider.of<Contact_provider>(
                                  context,
                                );
                              },
                              child: Text('SAVE'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('CLEAR'),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: .50,
                          height: 150,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.light_mode_outlined,
                          ),
                          title: Text('Theme'),
                          subtitle: Text('Change Theme'),
                          trailing: Switch(
                            value: Themeswitch,
                            onChanged: (bool value) {
                              gkey.currentState?.Swipe();

                              if (Themeswitch == true) {
                                ThemeData.dark(useMaterial3: true);
                                print('darkmode on');
                              } else {
                                ThemeData.light(useMaterial3: true);
                                print('Lightmode on');
                              }
                              setState(
                                () {
                                  Themeswitch = value;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
