import 'package:flutter/cupertino.dart';

class Themechange extends StatefulWidget {
  const Themechange({super.key});

  @override
  State<Themechange> createState() => _ThemechangeState();
}

class _ThemechangeState extends State<Themechange> {
  bool iphoneSwitch = false;
  bool TapSwitch = false;
  bool theme = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoListTile(
        title: Text('Theme'),
        subtitle: Text('change theme'),
        leading: Icon(CupertinoIcons.sun_min),
        trailing: CupertinoSwitch(
          value: iphoneSwitch,
          onChanged: (bool value) {
            return setState(() {
              iphoneSwitch = value;
            });
          },
        ),
      ),
    );
  }
}
