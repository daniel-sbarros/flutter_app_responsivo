import 'package:flutter/material.dart';

class ResponsivilidadeWrap extends StatefulWidget {
  const ResponsivilidadeWrap({Key? key}) : super(key: key);

  @override
  _ResponsivilidadeWrapState createState() => _ResponsivilidadeWrapState();
}

class _ResponsivilidadeWrapState extends State<ResponsivilidadeWrap> {
  @override
  Widget build(BuildContext context) {
    double largura = 200;
    double altura = 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsivilidade Wrap'),
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.spaceAround,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.amber,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.red,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.green,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
