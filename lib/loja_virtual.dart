// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_responsibilidade/widget/mobilee_app_bar.dart';
import 'package:flutter_responsibilidade/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
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
        );
      },
    );
  }
}
