import 'package:componentes_pruebas/src/pages/alert_page.dart';
import 'package:componentes_pruebas/src/providers/menu_provider.dart';
import 'package:componentes_pruebas/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData().then( (opciones){
    //   print(opciones);
    // });

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('el objecto: ${snapshot.data}');
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    return data.map((item) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(item['texto']),
                  leading: getIcon(item['icon']),
                  trailing:
                      Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                  onTap: () {
                    // final route = MaterialPageRoute(builder: (context) => AlertPage());
                    // Navigator.push(context, route);

                    Navigator.pushNamed(context, item['ruta']);
                  },
                ),
                Divider()
              ],
            )).toList();
  }
}
