// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ResponsivilidadeOrintation extends StatefulWidget {
  const ResponsivilidadeOrintation({Key? key}) : super(key: key);

  @override
  _ResponsivilidadeOrintationState createState() =>
      _ResponsivilidadeOrintationState();
}

class _ResponsivilidadeOrintationState
    extends State<ResponsivilidadeOrintation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsivilidade Orintation'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          // return Container(
          //   child: orientation == Orientation.portrait
          //       ? Center(child: Text('Retrato/Portrait'))
          //       : Center(child: Text('Paisagem/Landscape')),
          // );
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: [
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.blue),
              Container(color: Colors.purple),
              Container(color: Colors.yellow),
            ],
          );
        },
      ),
    );
  }
}
