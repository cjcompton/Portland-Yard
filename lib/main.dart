import 'package:flutter/material.dart';
/*import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:portland-yard/portland-game.dart';*/
//import 'package:dropdown_textfield/dropdown_textfield.dart';
//import 'package:numberpicker/numberpicker.dart';
import 'routes/routes.dart' as route;

void main() async /* what is this async? */ {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: route.controller,
      initialRoute: route.myStatefulWidget,
    );
  }
}




/*class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("go back"),
        ),
      ),
    );
  }
}*/

