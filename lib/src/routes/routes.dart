import 'package:componentes_pruebas/src/pages/listview_page.dart';
import 'package:componentes_pruebas/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes_pruebas/src/pages/animated_container.dart';
import 'package:componentes_pruebas/src/pages/card_page.dart';
import 'package:componentes_pruebas/src/pages/input_page.dart';
import 'package:componentes_pruebas/src/pages/alert_page.dart';
import 'package:componentes_pruebas/src/pages/avatar_page.dart';
import 'package:componentes_pruebas/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes(){
  return <String, WidgetBuilder>{
      '/'       : (BuildContext context) => HomePage(),
      'alert'   : (BuildContext context) => AlertPage(),
      'avatar'  : (BuildContext context) => AvatarPage(),
      'card'    : (BuildContext context) => CardPage(),
      'inputs'    : (BuildContext context) => InputPage(),
      'slider'    : (BuildContext context) => SaliderPage(),
      'list'    : (BuildContext context) => ListPage(),
      'animatedContainer'    : (BuildContext context) => AnimatedContainerPage(),
  };
}
