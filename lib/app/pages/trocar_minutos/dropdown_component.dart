import 'package:flutter/material.dart';

class DropdownComponent extends StatefulWidget {
  const DropdownComponent({super.key});

  @override
  State<DropdownComponent> createState() => _DropdownComponentState();
}

class _DropdownComponentState extends State<DropdownComponent> {

  List<String> listTipoExercicio= [
    'Corrida',
    'Caminha'
  ];
  String opcaoDropdown ='Corrida';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: DropdownButton(
        value: opcaoDropdown,
        elevation: 6,
        onChanged: (value){
          setState(() {
            opcaoDropdown = value!;
          });
        },
        items: listTipoExercicio.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
        }).toList(),
      ),
    );
  }
}