import 'package:flutter/material.dart';
import '../pages/inputs.dart';
import '../pages/home.dart';
import '../pages/alert.dart';
import '../pages/avatar.dart';
import '../pages/cards.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    '/alert': (BuildContext context) => Alert(),
    '/avatar': (BuildContext context) => Avatar(),
    '/card': (BuildContext context) => Cards(),
    '/inputs': (BuildContext context) => InputP(),
  };
}
