import 'package:flutter/material.dart';
import 'package:flutter_pruebas/src/routes/routes.dart';
import 'src/pages/alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings setting) {
        return MaterialPageRoute(builder: (BuildContext context) => Alert());
      },
    );
  }
}
