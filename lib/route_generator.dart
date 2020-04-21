import 'package:components/pages/animated_container_page.dart';
import 'package:components/pages/card_page.dart';
import 'package:components/pages/input_page.dart';
import 'package:components/pages/list_page.dart';
import 'package:components/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'package:components/pages/home_page.dart';
import 'package:components/pages/alert_page.dart';
import 'package:components/pages/avatar_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/alert':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => AlertPage(),
          );
        }
        return _errorRoute();
      case '/avatar':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => AvatarPage(),
          );
        }
        return _errorRoute();
      case '/card':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => CardPage(),
          );
        }
        return _errorRoute();
      case '/animatedContainer':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => AnimatedContainerPage(),
          );
        }
        return _errorRoute();
      case '/inputs':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => InputPage(),
          );
        }
        return _errorRoute();
      case '/slider':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SliderPage(),
          );
        }
        return _errorRoute();
      case '/list':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ListPage(),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
