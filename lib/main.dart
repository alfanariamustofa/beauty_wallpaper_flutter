import 'package:flutter/material.dart';
import './halaman/home.dart';
import './halaman/favorite.dart';
import './halaman/detail.dart';
import './halaman/about.dart';

void main() => runApp(boxMaterial);

MaterialApp boxMaterial = MaterialApp(
  title: 'Galery App',
  theme: ThemeData(primaryColor: Colors.white),
  routes: <String, WidgetBuilder> {
      "/gallery" : (context) => HomePage(),
      "/favorite" : (context) => FavoritePage(),
      "/about" : (context) => AboutPage(),
      "/detail" : (context) => DetailPage(),
  },
  initialRoute: "/gallery",
);