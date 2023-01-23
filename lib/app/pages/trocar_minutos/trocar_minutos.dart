import 'package:flutter/material.dart';
import 'package:ws_coins/app/controllers/trocar_minutos_controller.dart';
import 'package:ws_coins/app/pages/trocar_minutos/dropdown_component.dart';
import 'package:provider/provider.dart';

class TrocarMinutos extends StatefulWidget {
  const TrocarMinutos({super.key});

  @override
  State<TrocarMinutos> createState() => _TrocarMinutosState();
}

class _TrocarMinutosState extends State<TrocarMinutos> {
  List<bool> selecionar = [];

  @override
  void initState() {
    selecionar = List<bool>.filled(3, false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final trocarMinutosController = context.watch<TrocarMinutosController>();
    return Scaffold(
      appBar: AppBar(
        actions: const[
          Icon(Icons.diamond_outlined),
          Text('0'),
        ],
        title: Text('WSCoins'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const DropdownComponent(),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 250,
                    child: Text('VOCÊ POSSUI UM SALDO DE 150 MINUTOS',
                      style: TextStyle(fontSize: 20, ),
                    ),
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: trocarMinutosController.listaTrocarMinutos.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('${trocarMinutosController.listaTrocarMinutos[index]}'),
                        value: selecionar[index], 
                        onChanged: (value){
                          setState(() {
                            selecionar[index] = value!;
                          });
                        }
                      );
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (){}, 
              child: Text('Concluir'),
            ),
          ],
        ),
      ),
    );
  }
}