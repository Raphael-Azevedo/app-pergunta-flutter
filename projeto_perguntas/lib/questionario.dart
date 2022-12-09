import 'package:flutter/material.dart';
import 'Questao.dart';
import 'Respostas.dart';

class Questionario extends StatelessWidget {
  const Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.quandoResponder,
      super.key});

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];
        
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((texto) {
          return Respostas(texto['texto'] as String,
              () => quandoResponder(texto['pontuacao'] as int));
        }).toList(),
      ],
    );
  }
}
