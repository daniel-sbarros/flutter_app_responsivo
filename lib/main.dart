// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_responsibilidade/loja_virtual.dart';
import 'package:flutter_responsibilidade/regras_layouts.dart';
import 'package:flutter_responsibilidade/responsivilidade_media_query.dart';
import 'package:flutter_responsibilidade/responsivilidade_orintation.dart';
import 'package:flutter_responsibilidade/responsivilidade_row_col.dart';
import 'package:flutter_responsibilidade/responsivilidade_wrap.dart';
import 'package:flutter_responsibilidade/tamanho_textos.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.green,
      // brightness: Brightness.light,
    ),
    title: 'Flutter App Responsivo',
    debugShowCheckedModeBanner: false,
    home: ResponsivilidadeMediaQuery(),
    routes: {
      "/rowcol": (_) => ResponsivilidadeRowCol(),
      "/wrap": (_) => ResponsivilidadeWrap(),
      "/orientation": (_) => ResponsivilidadeOrintation(),
      "/regras": (_) => RegrasLayouts(),
      "/loja": (_) => LojaVirtual(),
      "/texto": (_) => TamanhoTextos(),
    },
  ));
}
