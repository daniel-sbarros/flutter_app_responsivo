import 'package:flutter/material.dart';

Drawer drawer(context) {
  return Drawer(
    child: Column(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: ClipRRect(
            borderRadius: BorderRadius.circular(40), // BorderOval
            child: Image.network(
                "https://avatars.githubusercontent.com/u/59489682?s=400&u=060e0928ac40cbe73a6595b71d052d5a4c2d876a&v=4"),
          ),
          accountName: const Text("Daniel Barros"),
          accountEmail: const Text('daniel_barros@live.com'),
        ),
        ListTile(
          title: const Text('Resposivilidade Row Column'),
          onTap: () {
            Navigator.of(context).pushNamed("/rowcol");
          },
        ),
        ListTile(
          title: const Text('Resposivilidade Wrap'),
          onTap: () {
            Navigator.of(context).pushNamed("/wrap");
          },
        ),
      ],
    ),
  );
}
