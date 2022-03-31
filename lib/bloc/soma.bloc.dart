import 'dart:math';
import 'package:flutter/material.dart';

class SomaBloc {
  var controller = TextEditingController();
  var resultado = 'Prencha os valores';
  calculate() {
    try {
      double valor = double.parse(controller.text);
      resultado =
          'Raiz quadrada de ${controller.text} é ${sqrt(valor).toStringAsFixed(4)}';
    } catch (e) {
      resultado = 'Ocorreu um erro';
    }
  }
}
