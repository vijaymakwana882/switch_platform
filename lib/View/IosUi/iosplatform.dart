import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_platform/View/android_ui/homepage.dart';
import '../../main.dart';
import 'profile.dart';

class IosContactUi extends StatefulWidget {
  const IosContactUi({super.key});

  @override
  State<IosContactUi> createState() => _IosContactUiState();
}

class _IosContactUiState extends State<IosContactUi> {
  final TextEditingController fname = TextEditingController();
  final TextEditingController bio = TextEditingController();
  bool iphoneSwitch = false;
  bool TapSwitch = false;
  bool SwitchTheme = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          trailing: CupertinoSwitch(
            value: iphoneSwitch,
            onChanged: (bool value) {
              return setState(() {
                iphoneSwitch = value;
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ));
              });
            },
          ),
          middle: Text(
            'Paltform Converter',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_add),
              ),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_2), label: 'CHATS'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.phone), label: 'CALLS'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings), label: 'SETTINGS'),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                if (index == 0) {
                  print('object');
                  return SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CupertinoListTile(
                            leading: Icon(
                              Icons.person,
                            ),
                            title: Text(
                              'Profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            subtitle: Text('Update Profile Data'),
                            // trailing: CupertinoSwitch(
                            //   value: TapSwitch,
                            //   onChanged: (bool value) {
                            //     setState(
                            //       () {
                            //         TapSwitch = value;
                            //       },
                            //     );
                            //   },
                            // ),
                            padding: EdgeInsetsDirectional.all(20),
                          ),
                          Center(
                            child: CircleAvatar(
                              maxRadius: 50,
                              child: Icon(CupertinoIcons.camera),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.person),
                              Expanded(
                                child: CupertinoTextField(
                                  placeholder: 'Full Name',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.phone),
                              Expanded(
                                child: CupertinoTextField(
                                  placeholder: 'Phone Number',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.chat_bubble_text),
                              Expanded(
                                child: CupertinoTextField(
                                  placeholder: 'Chat Conversation',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CupertinoButton(
                                child: Icon(CupertinoIcons.calendar),
                                onPressed: () {
                                  showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 200,
                                        child: CupertinoDatePicker(
                                          minimumYear: 1974,
                                          initialDateTime: DateTime.now(),
                                          use24hFormat: false,
                                          mode: CupertinoDatePickerMode
                                              .dateAndTime,
                                          maximumYear: 2025,
                                          onDateTimeChanged: (value) {},
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              Text('Pick Date'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CupertinoButton(
                                child: Icon(CupertinoIcons.time),
                                onPressed: () {
                                  showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 200,
                                        child: CupertinoTimerPicker(
                                          initialTimerDuration: Duration.zero,
                                          mode: CupertinoTimerPickerMode.hms,
                                          backgroundColor: Colors.white10,
                                          onTimerDurationChanged: (value) {},
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              Text('Pick Time'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                } else if (index == 1) {
                  print('object');
                  return SafeArea(
                    child: Column(
                      children: [],
                    ),
                  );
                } else if (index == 2) {
                  return SafeArea(
                    child: Column(
                      children: [],
                    ),
                  );
                } else {
                  return SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CupertinoListTile(
                            title: Text('Profile'),
                            subtitle: Text('Update Profile Data'),
                            trailing: CupertinoSwitch(
                              value: TapSwitch,
                              onChanged: (bool value) {
                                setState(() {
                                  TapSwitch = value;
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return iosProfile();
                                    },
                                  ));
                                });
                              },
                            ),
                            leading: Icon(CupertinoIcons.person),
                          ),
                          CupertinoListTile(
                            title: Text('Theme'),
                            subtitle: Text('change Theme'),
                            trailing: CupertinoSwitch(
                              value: SwitchTheme,
                              onChanged: (bool value) {
                                gkey.currentState?.Swipe();
                                setState(() {
                                  SwitchTheme = value;
                                  // Navigator.push(context, MaterialPageRoute(
                                  //   builder: (context) {
                                  //
                                  //     print('object');
                                  //   },
                                  // ));
                                });
                              },
                            ),
                            leading: Icon(CupertinoIcons.brightness),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
