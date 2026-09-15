import 'package:flutter/material.dart';

class TelaLinguagens extends StatelessWidget {
  const TelaLinguagens({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> linguagens = [
      'Dart',
      'Python',
      'Java',
      'JavaScript',
      'C',
      'C#',
      'Kotlin',
      'Swift',
      'Go',
      'Rust',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Linguagens de Programação'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: linguagens.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.code),
            title: Text(linguagens[index]),
          );
        },
      ),
    );
  }
}
