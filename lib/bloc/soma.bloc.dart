import 'dart:math';
import 'package:flutter/material.dart';

class SomaBloc {
  var controller = TextEditingController();
  var resultado = 'prencha os valores';
  calculate() {
    double valor = double.parse(controller.text);
    resultado =
        'Raiz quadrada de ${controller.text} é ${sqrt(valor).toStringAsFixed(4)}';
  }
}
