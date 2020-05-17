import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              radius: 20.0,
              backgroundImage: NetworkImage('https://i.insider.com/5e9cefdcdcd88c36d90471f3?width=1136&format=jpeg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.yellow,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://i.insider.com/5e9cefdcdcd88c36d90471f3?width=1136&format=jpeg'),
        ),
      ),
    );
  }
}
