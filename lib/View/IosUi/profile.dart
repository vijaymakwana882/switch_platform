import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_platform/View/IosUi/iosplatform.dart';



class iosProfile extends StatefulWidget {
  const iosProfile({super.key});

  @override
  State<iosProfile> createState() => _iosProfileState();
}

class _iosProfileState extends State<iosProfile> {
  bool Profileonoff = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoListTile(
            title: Text('Profile'),
            subtitle: Text('Update Profile Data'),
            trailing: CupertinoSwitch(
              value: Profileonoff,
              onChanged: (bool value) {
                setState(() {
                  Profileonoff = value;
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return IosContactUi();
                    },
                  ));
                });
              },
            ),
            leading: Icon(CupertinoIcons.person),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            maxRadius: 80,
            backgroundColor: Color(0xff1876D2),
            child: Icon(CupertinoIcons.photo_camera, size: 50),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoTextField(
                textAlign: TextAlign.center,
                decoration: BoxDecoration(
                  border: Border.symmetric(horizontal: BorderSide.none),
                ),
                placeholder: 'Enter Your Name',
              ),
              CupertinoTextField(
                textAlign: TextAlign.center,
                decoration: BoxDecoration(
                  border: Border.symmetric(horizontal: BorderSide.none),
                ),
                placeholder: 'Enter Your Bio',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('SAVE'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('CLEAR'),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            height: 2,
            color: CupertinoColors.inactiveGray,
          ),
        ],
      ),
    );
  }
}
