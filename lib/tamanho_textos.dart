// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_adjacent_string_concatenation, prefer_const_constructors
// add package https://pub.dev/packages?q=auto+size

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  _TamanhoTextosState createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamanhos de Textos'),
      ),
      body: Column(
        children: [
          AutoSizeText(
            "Lorem Ipsum is simply dummy text of the printing and " +
                "typesetting industry. Lorem Ipsum has been the industry's " +
                "standard dummy text ever since the 1500s, when an unknown " +
                "printer took a galley of type and scrambled it to make a type" +
                " specimen book. It has survived not only five centuries, but also" +
                " the leap into electronic typesetting, remaining essentially" +
                " unchanged. It was popularised in the 1960s with the release" +
                " of Letraset sheets containing Lorem Ipsum passages, and more" +
                " recently with desktop publishing software like Aldus PageMaker" +
                " including versions of Lorem Ipsum.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
          AutoSizeText(
            "Lorem Ipsum is simply dummy text of the printing and " +
                "typesetting industry. Lorem Ipsum has been the industry's " +
                "standard dummy text ever since the 1500s, when an unknown " +
                "printer took a galley of type and scrambled it to make a type" +
                " specimen book. It has survived not only five centuries, but also" +
                " the leap into electronic typesetting, remaining essentially" +
                " unchanged. It was popularised in the 1960s with the release" +
                " of Letraset sheets containing Lorem Ipsum passages, and more" +
                " recently with desktop publishing software like Aldus PageMaker" +
                " including versions of Lorem Ipsum.",
            style: TextStyle(fontSize: 18),
            maxLines: 4,
            minFontSize: 12,
            // stepGranularity: 10,
            overflow: TextOverflow.ellipsis,
            // overflowReplacement: Text("Não Coube."),
            // presetFontSizes: [30, 22, 10],
          ),
        ],
      ),
    );
  }
}
