// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_responsibilidade/responsivilidade_media_query.dart';
import 'package:flutter_responsibilidade/responsivilidade_row_col.dart';
import 'package:flutter_responsibilidade/responsivilidade_wrap.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      // brightness: Brightness.light,
    ),
    title: 'Flutter App Responsivo',
    debugShowCheckedModeBanner: false,
    home: ResponsivilidadeMediaQuery(),
    routes: {
      "/rowcol": (_) => ResponsivilidadeRowCol(),
      "/wrap": (_) => ResponsivilidadeWrap(),
    },
  ));
}
