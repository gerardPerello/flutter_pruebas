import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/provider_menu.dart';
import 'package:flutter_application_1/utils/utils_functions.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes Flutter'),
        ),
        body: _list());
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          List<dynamic> what = snapshot.data as List<dynamic>;
          return ListView(children: _listItems(what, context));
        } else {
          return ListView();
        }
      },
    );
  }

  List<Widget> _listItems(List<dynamic> optListMenu, BuildContext context) {
    final List<Widget> optValueWidget = [];
    optListMenu.forEach((element) {
      //print(element);
      final widgetValue = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, '/' + element['ruta']);
        },
      );
      optValueWidget.add(widgetValue);
    });
    return optValueWidget;
  }
}
