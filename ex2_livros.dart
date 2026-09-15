import 'package:flutter/material.dart';

class Livro {
  final String titulo;
  final String autor;

  Livro({
    required this.titulo,
    required this.autor,
  });
}

class TelaLivros extends StatelessWidget {
  const TelaLivros({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Livro> livros = [
      Livro(titulo: 'Clean Code', autor: 'Robert C. Martin'),
      Livro(titulo: 'O Programador Pragmático', autor: 'David Thomas e Andrew Hunt'),
      Livro(titulo: 'Estruturas de Dados e Algoritmos', autor: 'Thomas Cormen'),
      Livro(titulo: 'Introdução à Programação com Python', autor: 'Nilo Ney'),
      Livro(titulo: 'Domain-Driven Design', autor: 'Eric Evans'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Livros'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: livros.length,
        itemBuilder: (context, index) {
          final Livro livro = livros[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: const Icon(Icons.menu_book, size: 35),
              title: Text(
                livro.titulo,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(livro.autor),
            ),
          );
        },
      ),
    );
  }
}
