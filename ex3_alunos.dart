import 'package:flutter/material.dart';

class Aluno {
  final String nome;
  final double nota;

  Aluno({
    required this.nome,
    required this.nota,
  });
}

class TelaAlunos extends StatelessWidget {
  const TelaAlunos({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Aluno> alunos = [
      Aluno(nome: 'Patrick Paiva', nota: 9.5),
      Aluno(nome: 'Ana Souza', nota: 8.0),
      Aluno(nome: 'Bruno Lima', nota: 6.5),
      Aluno(nome: 'Carla Mendes', nota: 10.0),
      Aluno(nome: 'Diego Alves', nota: 7.2),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Alunos'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: alunos.length,
        itemBuilder: (context, index) {
          final Aluno aluno = alunos[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(aluno.nome),
              subtitle: Text('Nota: ${aluno.nota.toStringAsFixed(1)}'),
            ),
          );
        },
      ),
    );
  }
}
