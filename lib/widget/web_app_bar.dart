// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_rounded),
        ),
        SizedBox(width: 5),
        SizedBox(
          width: 100,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Cadastrar'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 5),
        SizedBox(
          width: 100,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Entrar'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              primary: Colors.white,
            ),
          ),
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.more_vert),
        // ),
      ],
    );
  }
}
