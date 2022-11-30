import 'package:flutter/material.dart';
//import 'package:dropdown_textfield/dropdown_textfield.dart';
//import 'package:numberpicker/numberpicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.transparent,
        textStyle: const TextStyle(
            fontFamily: 'Oswald', fontSize: 24.0, color: Colors.white));

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 180, horizontal: 55),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home_background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: <Widget>[
          const Text('Portland Yard',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Oswald-SemiBold",
                  fontSize: 35,
                  color: Colors.white)),
          Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0)),
          Container(
              color: Colors.black.withOpacity(0.5),
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ignore: prefer_const_constructors

                    ElevatedButton(
                      style: style,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateGamePage()),
                        );
                      },
                      child: const Text('Create Game',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: Colors.white,
                    ),
                    // ignore: prefer_const_constructors

                    ElevatedButton(
                      style: style,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JoinGamePage()),
                        );
                      },
                      child: const Text('Join Game',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: Colors.white,
                    ),

                    ElevatedButton(
                      style: style,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GamePage()),
                        );
                      },
                      child: const Text('Game Page',
                          style: TextStyle(color: Colors.white)),
                    ),
                    // ignore: prefer_const_constructors

                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: Colors.white,
                    ),

                    ElevatedButton(
                      style: style,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsPage()),
                        );
                      },
                      child: const Text('Settings',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ]))
        ]),
      ),
    );
  }
}

class CreateGamePage extends StatelessWidget {
  const CreateGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        textStyle: const TextStyle(
            fontFamily: 'Oswald', fontSize: 24.0, color: Colors.white));

    //var _yesNoOptions = ["yes", "no"];
    //var _currentSelectedValue = 'Randomly Assigned Mr. X?';

    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 30),
            decoration:
                const BoxDecoration(color: Color.fromRGBO(118, 156, 145, 100)),
            child: Column(children: <Widget>[
              const Text('Create Game',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Oswald-SemiBold",
                      fontSize: 35,
                      color: Colors.white)),
              ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back')),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 50.0)),
              Container(
                color: Colors.black.withOpacity(0.5),
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: Column(children: const <Widget>[
                  /*SizedBox(
                      height: 50,
                      width: 50,
                      child: */
                  TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Number of Players',
                  )) /*)*/,
                  SizedBox(height: 15),
                  Divider(height: 0, thickness: 1, color: Colors.white),
                  SizedBox(height: 15),
                  TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Number of Bots',
                  )),
                  SizedBox(height: 15),
                  Divider(height: 0, thickness: 1, color: Colors.white),
                  SizedBox(height: 15),
                ]),
              )
            ])));
  }
}

class SettingsPage extends StatelessWidget {
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
}

class JoinGamePage extends StatelessWidget {
  const JoinGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join Game"),
      ),
      body: Container(
        color: Color.fromRGBO(196, 142, 125, 100).withOpacity(0.5),
        alignment: Alignment.center,
        //padding: EdgeInsets.all((MediaQuery.of(context).size.width) / 4),
        padding: EdgeInsets.fromLTRB(
            0, (MediaQuery.of(context).size.height) / 3, 0, 0),
        child: Column(
          children: const <Widget>[
            SizedBox(
              width: 160,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                    //border: InputBorder.none,
                    labelText: 'Your Name',
                    hintText: 'Enter Your Name'),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('Disabled'),
            ),
          ],
        ),
      ),
    );
    /*
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join Game"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Join Game"),
        ),
      ),
    );
    */
  }
}

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 30),
        decoration:
            const BoxDecoration(color: Color.fromRGBO(118, 156, 145, 100)),
        child: Column(children: const <Widget>[
          Text('Game Page',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Oswald-SemiBold",
                  fontSize: 35,
                  color: Colors.white)),
        ]),
      ),
    );
  }
}
