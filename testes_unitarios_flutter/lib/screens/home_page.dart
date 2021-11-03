import 'package:flutter/material.dart';

import 'package:testes_unitarios_flutter/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  final IHomeController controller;

  const HomePage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late IHomeController _controller;

  @override
  void initState() {
    //pego a instancia que veio do construtor da classe
    _controller = widget.controller;
    super.initState();
  }

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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_rounded),
            label: "Item 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_sharp),
            label: "Item 2",
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
