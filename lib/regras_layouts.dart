// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class RegrasLayouts extends StatefulWidget {
  const RegrasLayouts({Key? key}) : super(key: key);

  @override
  _RegrasLayoutsState createState() => _RegrasLayoutsState();
}

class _RegrasLayoutsState extends State<RegrasLayouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regras de Layout'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraints) {
            // RECUPERA A LARGURA DO WIDGET PAI
            var largura = constraints.maxWidth;
            print(largura);
            // return Container(
            //   child: Text('Daniel'),
            // );
            if (largura <= 600) {
              // CELULAR
              return Text('Celular');
            } else if (largura <= 960) {
              // TABLET
              return Text('Tablet');
            } else {
              // TELAS MAIORES
              return Text('Telas Maiores');
            }
          },
        ),
      ),
    );
  }
}
