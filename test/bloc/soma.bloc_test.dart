import 'package:appsoma/bloc/soma.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:math' show sqrt;

void main() {
  final bloc = SomaBloc();
  test(
    'should return raiz quadrada',
    () {
      TextEditingController controller = bloc.controller;
      controller.text = "5";
      final esperado = 'Raiz quadrada de ${controller.text} é ${sqrt(5)}';
      bloc.calculate();
      expect(esperado, bloc.resultado);
    },
  );
}
