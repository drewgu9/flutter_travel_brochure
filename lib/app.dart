import 'package:flutter/material.dart';

import 'location_detail.dart';
import 'models/locations.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => Text("Null Route Bitch"),
            settings: settings);
      },
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments;
      print(settings.name);
      print(settings.arguments);

      if (settings.arguments != null) {
        arguments = settings.arguments as Map<String, dynamic>;

        Widget screen;
        switch (settings.name) {
          case LocationsRoute:
            screen = Locations();
            break;
          case LocationDetailRoute:
            screen = LocationDetail(arguments['id']);
            break;
          default:
            return null;
        }

        return MaterialPageRoute(
            builder: (BuildContext context) => screen, settings: settings);
      } else {
        return MaterialPageRoute(
            builder: (BuildContext context) => Locations(), settings: settings);
      }
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
            titleTextStyle: AppBarTextStyle, toolbarTextStyle: Body1TextStyle),
        textTheme: TextTheme(
            headline1: TitleTextStyle,
            subtitle1: SubTitleTextStyle,
            caption: CaptionTextStyle,
            bodyText1: Body1TextStyle));
  }
}
