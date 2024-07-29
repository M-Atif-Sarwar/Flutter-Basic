import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({super.key});

  final countries = [
    'Japan',
    'Brazil',
    'Australia',
    'Canada',
    'India',
    'China',
    'Russia',
    'Germany',
    'France',
    'United States',
  ];

  void itemClick(BuildContext context, listIndex) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(listIndex)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Basic'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.blueGrey,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,

              child: ListView.builder(
                itemCount: countries.length,
                itemBuilder: (context, index) {
                  final listIndex = countries[index];
              
                  return GestureDetector(
                      onTap: () => itemClick(context, listIndex),
                      child: Text(
                        listIndex,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 191, 255, 1.0)),
                      ));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
