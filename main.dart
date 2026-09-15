import 'package:flutter/material.dart';
import 'ex1_linguagens.dart';
import 'ex2_livros.dart';
import 'ex3_alunos.dart';
import 'ex4_tarefas.dart';
import 'ex5_estoque.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercícios de Fixação - Listas e Cards',
      home: const TelaMenu(),
    );
  }
}

class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercícios - Listas, ListView e Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _botaoExercicio(
            context,
            titulo: '1. Lista de linguagens',
            destino: const TelaLinguagens(),
          ),
          _botaoExercicio(
            context,
            titulo: '2. Catálogo de livros',
            destino: const TelaLivros(),
          ),
          _botaoExercicio(
            context,
            titulo: '3. Lista de alunos',
            destino: const TelaAlunos(),
          ),
          _botaoExercicio(
            context,
            titulo: '4. Cadastro de tarefas',
            destino: const TelaTarefas(),
          ),
          _botaoExercicio(
            context,
            titulo: '5. Estoque simples',
            destino: const TelaEstoque(),
          ),
        ],
      ),
    );
  }

  Widget _botaoExercicio(
    BuildContext context, {
    required String titulo,
    required Widget destino,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destino),
          );
        },
        child: Text(titulo),
      ),
    );
  }
}
