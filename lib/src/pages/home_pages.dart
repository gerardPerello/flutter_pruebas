import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Applicacion'),
      ),
      body: Center(child: Text('Hello World chavales')),
      backgroundColor: Color.fromRGBO(211, 227, 237, 100),
      floatingActionButton: FloatingActionButton(
        onPressed: setMessage,
        child: const Icon(Icons.add_a_photo),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
    throw UnimplementedError();
  }

  setMessage() {
    print('Action Button');
  }
}
