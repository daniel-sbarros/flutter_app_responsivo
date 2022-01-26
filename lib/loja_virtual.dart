// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_responsibilidade/widget/item_produto.dart';
import 'package:flutter_responsibilidade/widget/mobilee_app_bar.dart';
import 'package:flutter_responsibilidade/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double larguraTela) {
    if (larguraTela <= 600) {
      return 3;
    } else if (larguraTela <= 960) {
      return 4;
    } else {
      return 6;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = AppBar().preferredSize.height;

        return Scaffold(
          appBar: width < 600
              ? PreferredSize(
                  child: MobileeAppBar(),
                  preferredSize: Size(width, height),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(width, height),
                ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount:
                  _ajustarVisualizacao(MediaQuery.of(context).size.width),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ItemProduto("Media Player Pioneer", "1.500,00", "p1.jpg"),
                ItemProduto("Pneu Goodyear aro 16", "560,00", "p2.jpg"),
                ItemProduto("Sansung 9", "4.100,00", "p3.jpg"),
                ItemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
                ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
                ItemProduto("Iphone X", "4.900,00", "p6.jpg"),
                ItemProduto("Media Player Pioneer", "1.500,00", "p1.jpg"),
                ItemProduto("Pneu Goodyear aro 16", "560,00", "p2.jpg"),
                ItemProduto("Sansung 9", "4.100,00", "p3.jpg"),
                ItemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
                ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
                ItemProduto("Iphone X", "4.900,00", "p6.jpg"),
              ],
            ),
          ),
        );
      },
    );
  }
}
