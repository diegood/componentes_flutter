import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Pages'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('texto de la tarjeta'),
            subtitle: Text(
                'Aca se supone que tengo que poner un monton de texto para ocupar bocha de espacio para ver como queda..'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => null,
              ),
              SizedBox(
                width: 20.0,
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 2),
                color: Colors.blueAccent,
                child: Text('Ok'),
                onPressed: () => null,
                onLongPress: () {
                  print('Me Apretaron muuuchoo');
                },
              ),
              SizedBox(
                width: 20.0,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
              image: NetworkImage(
                  'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
              placeholder: AssetImage('assets/loading.gif'),
              // fadeInDuration: Duration(microseconds: 500),
              height: 250.0,
              fit: BoxFit.cover
              // fadeInDuration: Duration(microseconds: 200),
              ),
          // Image(
          //   image: NetworkImage(
          //       'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
          // ),
          Container(
              padding: EdgeInsets.all(20.0),
              child: Text('No tengo idea de que tendria que poner aca'))
        ],
      ),
    );
  }
}
