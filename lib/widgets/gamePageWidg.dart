import 'package:flutter/material.dart';
import 'package:portland_yard/routes/routes.dart' as route;

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  //const GamePage({super.key});
  double point1Top = 170;
  double point1Left = 175;

  double point2Top = 200;
  double point2Left = 225;

  double point3Top = 270;
  double point3Left = 175;

  double tempPointTop = 200;
  double tempPointLeft = 225;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        textStyle: const TextStyle(
            fontFamily: 'Oswald', fontSize: 24.0, color: Colors.white));
    return Scaffold(
        body: Container(
            color: const Color.fromRGBO(88, 44, 38, 100).withOpacity(0.7),
            alignment: Alignment.center,
            //padding: EdgeInsets.all((MediaQuery.of(context).size.width) / 4),
            padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
            child: Column(children: <Widget>[
              const Text('Game Page',
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
                child: Stack(
                  children: [
                    /*SizedBox(
                      height: 50,
                      width: 50,
                      child: */
                    Container(
                      height: 350,
                      width: 375,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/map.jpeg'),
                        fit: BoxFit.fill,
                      )),
                    ),
                    // ignore: avoid_print
                    Positioned(
                        top: point2Top,
                        left: point2Left,
                        child: RedCircleButton(
                          onTap: () => setState(() {}),
                        )),
                    Positioned(
                      top: point1Top,
                      left: point1Left,
                      child: BlackCircleButton(
                        onTap: () => setState(() {
                          point2Top = point1Top;
                          point2Left = point1Left;
                          point1Top = tempPointTop;
                          point1Left = tempPointLeft;
                          tempPointTop = point2Top;
                          tempPointLeft = point2Left;
                        }),
                      ),
                    ),
                    Positioned(
                      top: point3Top,
                      left: point3Left,
                      child: BlackCircleButton(
                        onTap: () => setState(() {
                          point2Top = point3Top;
                          point2Left = point3Left;
                          point3Top = tempPointTop;
                          point3Left = tempPointLeft;
                          tempPointTop = point2Top;
                          tempPointLeft = point2Left;
                        }),
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}

class RedCircleButton extends StatelessWidget {
  final GestureTapCallback onTap;

  const RedCircleButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 20.0;

    return InkResponse(
        onTap: onTap,
        child: Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ));
  }
}

class BlackCircleButton extends StatelessWidget {
  final GestureTapCallback onTap;

  const BlackCircleButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 20.0;

    return InkResponse(
        onTap: onTap,
        child: Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ));
  }
}
