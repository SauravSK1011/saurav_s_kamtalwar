import 'package:flutter/material.dart';
import 'package:saurav_s_kamtalwar/Projects.dart';
import 'package:saurav_s_kamtalwar/about.dart';

import 'Home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Soho'),
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/project': (context) => Projects(),
      '/': (context) => Home(),
      '/about': (context) => About(),
    },
  ));
}



