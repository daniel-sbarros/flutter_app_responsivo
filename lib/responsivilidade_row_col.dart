import 'package:flutter/material.dart';

class ResponsivilidadeRowCol extends StatefulWidget {
  const ResponsivilidadeRowCol({Key? key}) : super(key: key);

  @override
  _ResponsivilidadeRowColState createState() => _ResponsivilidadeRowColState();
}

class _ResponsivilidadeRowColState extends State<ResponsivilidadeRowCol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resposivilidade Row Column'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
