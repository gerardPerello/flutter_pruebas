import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar App Bar'),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.scientificamerican.com/espanol/cache/file/050D641B-C40F-460A-B892534B0024CB3C_source.jpg?w=590&h=800&4147C8A7-B3A4-4126-9293322177AC2D1C'),
              radius: 25.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('GP'),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text('Hello Avatar'),
        ),
      ),
    );
  }
}
