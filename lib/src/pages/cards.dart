import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CardView'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[_card1(), _card2()],
        ));
  }

  Widget _card1() {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de la targeta perro'),
            subtitle: Text('EL SUBTITULO'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              TextButton(onPressed: () {}, child: const Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  Widget _card2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Prueba FadeInImage'),
          )
        ],
      ),
    );
  }
}
