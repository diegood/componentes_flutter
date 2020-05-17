import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregar10();
        _fetchDate();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _crearlista(),
          _crearLoading(),
        ],
      ),
    );
  }

  _crearlista() {
    return RefreshIndicator(
      onRefresh: optenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumeros[index];
          return FadeInImage(
            image:
                NetworkImage('https://i.picsum.photos/id/$imagen/500/300.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
          );
        },
      ),
    );
  }

  Future<Null> optenerPagina1() async {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregar10();
    return Future.delayed(Duration(seconds: 2));
  }

  void _agregar10() {
    for (var i = 0; i < 10; i++) {
      _listaNumeros.add(_ultimoItem++);
    }
    setState(() {});
  }

  Future<Null> _fetchDate() async {
    _isLoading = true;
    setState(() {});

    new Timer(Duration(seconds: 2), _respuestaHttp);
  }

  void _respuestaHttp() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(seconds: 2));
    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                backgroundColor: Colors.white,
              )
            ],
          ),
          SizedBox(height: 20.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
