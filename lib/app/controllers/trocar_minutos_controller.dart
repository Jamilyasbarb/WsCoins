import 'package:flutter/cupertino.dart';

class TrocarMinutosController extends ChangeNotifier{

  get getLista => listaTrocarMinutos;

  List<String> listaTrocarMinutos = [
    'TROCAR 10 MINUTOS POR 1 WSCOIN',
    'TROCAR 20 MINUTOS POR 3 WSCOIN',
    'TROCAR 30 MINUTOS POR 6 WSCOIN'
  ];
}