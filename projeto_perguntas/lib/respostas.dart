import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  const Respostas(this.text, this.onSelecao, {super.key});

  final String text;
  final void Function() onSelecao;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        onPressed: onSelecao,
        child: Text(text),
      ),
    );
  }
}
