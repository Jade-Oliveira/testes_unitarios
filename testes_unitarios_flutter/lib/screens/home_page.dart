import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Website Update'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          ListView(
            key: const Key('list-view-copy'),
            //a propriedade abaixo faz a listView ocupar apenas o espaço que ela realmente precisa na tela
            shrinkWrap: true,
            children: [
              CheckboxListTile(
                value: true,
                onChanged: (_) {},
                title: const Text('Survey user'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
