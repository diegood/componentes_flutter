import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{
  final opciones= ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
        children: _CrearItemsCorto()
      ),
    );
  }
  
  List<Widget> _CrearItems(){
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget= ListTile(title: Text(opt));
      lista..add(tempWidget)
            ..add(Divider(height: 1.0, thickness: 2.0, color: Color.fromRGBO(255, 10, 100, 0.3),));
    }
    return lista;
  }

  List<Widget> _CrearItemsCorto(){
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$item!'),
            subtitle: Text('Que va'),
            leading: Icon(Icons.contacts),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
    

  }

}