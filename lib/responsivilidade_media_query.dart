// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '_drawer.dart';

class ResponsivilidadeMediaQuery extends StatefulWidget {
  const ResponsivilidadeMediaQuery({Key? key}) : super(key: key);

  @override
  _ResponsivilidadeMediaQueryState createState() =>
      _ResponsivilidadeMediaQueryState();
}

class _ResponsivilidadeMediaQueryState
    extends State<ResponsivilidadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Responsivo'),
      ),
      drawer: drawer(context),
      body: Column(
        children: [
          Container(
            width: largura,
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('App Responsivo'),
    );
  }
}
