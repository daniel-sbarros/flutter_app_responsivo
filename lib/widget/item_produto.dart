// ignore_for_file: prefer_const_constructors, unnecessary_this, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  String descricao;
  String preco;
  String imagem;

  ItemProduto(this.descricao, this.preco, this.imagem, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              "assets/images/$imagem",
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "R\$ $preco",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
