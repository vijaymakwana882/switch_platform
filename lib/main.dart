import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/contact_provider.dart';
import 'View/android_ui/homepage.dart';

void main() {
  runApp(Paltform_switcher(
    key: gkey,
  ));
}

GlobalKey<_Paltform_switcherState> gkey = GlobalKey<_Paltform_switcherState>();

class Paltform_switcher extends StatefulWidget {
  const Paltform_switcher({super.key});

  @override
  State<Paltform_switcher> createState() => _Paltform_switcherState();
}

class _Paltform_switcherState extends State<Paltform_switcher> {
    ThemeMode themeMode = ThemeMode.light;


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Contact_provider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode: themeMode,
        home: HomePage(),
      ),
    );
  }

  void Swipe() {
    themeMode =
        (themeMode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
    print(themeMode);
    setState(() {});
  }
}
