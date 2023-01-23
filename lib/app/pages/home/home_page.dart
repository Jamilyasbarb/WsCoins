import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pushReplacementNamed('trocar');
              }, 
              child: Text('TROCAR MINUTOS DE EXERCÍCIOS POR WSCOINS'),
            ),
            TextButton(
              onPressed: (){}, 
              child: Text('RESPONDER QUIZ POR WSCOINS'),
            ),
          ],
        ),
      ),
    );
  }
}