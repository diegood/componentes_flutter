import 'package:flutter/material.dart';

class SaliderPage extends StatefulWidget {
  SaliderPage({Key key}) : super(key: key);

  _SaliderPageState createState() => _SaliderPageState();
}

class _SaliderPageState extends State<SaliderPage> {
  double _valorSlider = 0;
  bool _bloaquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders')),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[_crearSlider(), _crearCheck(), _crearSwitch(), _crearImagen()],
        ),
      ),
    );
  }

  _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Valor del Slider',
      onChanged: (_bloaquearCheck)
          ? null
          : (value) => setState(() => _valorSlider = value),
      max: 400.0,
      value: _valorSlider,
      min: 0.0,
    );
  }

  _crearImagen() {
    return Image(
      width: _valorSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://static4.depositphotos.com/1000992/512/i/450/depositphotos_5121815-stock-photo-gold-fish.jpg'),
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Desactivar pez'),
      value: _bloaquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloaquearCheck = valor;
        });
      },
    );
  }

  Widget _crearCheck() {
    // return Checkbox(
    //   value: _bloaquearCheck,
    //   onChanged: (valor){
    //     setState(() {
    //       _bloaquearCheck = valor;
    //     });
    //   },
    // );F

    return CheckboxListTile(
      title: Text('Desactivar pez'),
      value: _bloaquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloaquearCheck = valor;
        });
      },
    );
  }
}
