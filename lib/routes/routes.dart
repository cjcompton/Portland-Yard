import 'package:flutter/material.dart';
import 'package:portland_yard/widgets/createGameWidg.dart';
import 'package:portland_yard/widgets/gamePageWidg.dart';
import 'package:portland_yard/widgets/joinGameWidg.dart';
import 'package:portland_yard/widgets/myStatefulWidg.dart';

// route names
const String createGamePage = 'createGameWidg';
const String gamePage = 'gamePageWidg';
const String joinGamePage = 'joinGameWidg';
const String myStatefulWidget = 'myStatefulWidg';

// controller function
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case createGamePage:
      return MaterialPageRoute(builder: (context) => const CreateGamePage());
    case gamePage:
      return MaterialPageRoute(builder: (context) => const GamePage());
    case joinGamePage:
      return MaterialPageRoute(builder: (context) => const JoinGamePage());
    case myStatefulWidget:
      return MaterialPageRoute(builder: (context) => const MyStatefulWidget());
    default:
      throw ('this does not have a route');
  }
}
