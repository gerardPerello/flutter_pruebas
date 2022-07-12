import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/home_pages.dart';

class MyApp1 extends StatelessWidget {
  static const String _title = 'Flutter Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeStateFullWidget(),
      title: _title,
    );
  }
}

class MyHomeStateFullWidget extends StatefulWidget {
  MyHomeStateFullWidget({Key? key}) : super(key: key);

  @override
  _MyHomeStateFullWidget createState() => _MyHomeStateFullWidget();
}

class _MyHomeStateFullWidget extends State<MyHomeStateFullWidget> {
  int _count = 0;
  final itemsOptions = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve',
    'Diez',
    'Onzes'
  ];

  List<Widget> _setItems() {
    List<Widget> list = List<Widget>.empty(growable: true);
    for (var opt in itemsOptions) {
      final itemListTitle = ListTile(
        leading: Icon(Icons.alarm),
        title: Text(opt),
        subtitle: Text('Test...'),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
      list.add(itemListTitle);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyApp Count Bitch'),
        ),
        body: Center(
            child: ListView(
          children: _setItems(),
        )),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            _count++;
          }),
          tooltip: 'Clicme',
          child: Icon(Icons.add),
        ));
  }
}
