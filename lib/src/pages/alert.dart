import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert App Bar'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Show dialog'),
        onPressed: () {
          _showAlert(context);
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.redAccent, shape: StadiumBorder()),
      )),
    );
  }

  Widget _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text("Contenido de la targeta"),
                FlutterLogo(
                  size: 100.00,
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Aceptar'),
              )
            ],
          );
        });
    throw ('Error');
  }
}
