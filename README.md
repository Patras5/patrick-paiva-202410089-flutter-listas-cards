# Exercícios de Fixação — Listas, ListView e Cards (Flutter)

Projeto com os 5 exercícios de fixação do material "Listas, ListView e Cards":

1. Lista de linguagens
2. Catálogo de livros
3. Lista de alunos
4. Cadastro de tarefas (dinâmico)
5. Estoque simples (dinâmico)

A tela inicial (`main.dart`) mostra um menu com um botão para cada exercício.

## Como rodar

```bash
flutter create .
flutter pub get
flutter run
```

## Como criar o repositório e entregar no GitHub

### 1. Criar o projeto Flutter (se ainda não tiver)
```bash
flutter create nome_do_projeto
cd nome_do_projeto
```

### 2. Copiar os arquivos
Substitua o conteúdo da pasta `lib/` do projeto pelos 5 arquivos `.dart` + o `main.dart` enviados.

### 3. Testar antes de subir
```bash
flutter run
```
Confirme que o menu abre e que cada exercício funciona (principalmente 4 e 5, que têm cadastro).

### 4. Inicializar o Git (dentro da pasta do projeto)
```bash
git init
git add .
git commit -m "Exercícios de fixação: listas, ListView e cards"
```

O Flutter já cria um `.gitignore` padrão (ignora `build/`, `.dart_tool/`, etc.), então não precisa mexer nisso.

### 5. Criar o repositório no GitHub
- Acesse github.com → botão **New repository**
- Dê um nome (ex: `flutter-listas-cards`)
- **Não** marque "Add a README" (você já tem um)
- Crie o repositório

### 6. Conectar o repositório local ao GitHub
O próprio GitHub mostra os comandos na tela de "quick setup". Em geral:
```bash
git remote add origin https://github.com/SEU_USUARIO/flutter-listas-cards.git
git branch -M main
git push -u origin main
```

### 7. Conferir
Acesse o link do repositório no navegador e confirme que os arquivos (`lib/`, `pubspec.yaml`, etc.) aparecem lá. Esse link é o que você entrega pro professor.

## Riscos / pontos de atenção

- **`flutter create .`** dentro de uma pasta que já tem os `.dart` files pode sobrescrever o `main.dart` gerado por padrão — copie os arquivos deste pacote *depois* de rodar `flutter create`.
- Nos exercícios 4 e 5, os campos de preço/quantidade usam `double.tryParse` / `int.tryParse` com `?? 0`, então texto inválido não quebra o app, só não adiciona nada (validação simples).
- Confirme que o nome do repositório e o commit deixam claro que é referente a este material, caso o professor peça vários módulos ao longo do curso.

## Próximos passos (fora do escopo deste material)
Os próprios exercícios já preparam terreno para o próximo bloco: `onTap` no `ListTile`, `Navigator.push`/`pop()` entre telas e `SnackBar` — que ainda não foram usados aqui de propósito.
