import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ws_coins/app/controllers/trocar_minutos_controller.dart';
import 'package:ws_coins/app/pages/home/home_page.dart';
import 'package:ws_coins/app/pages/trocar_minutos/trocar_minutos.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TrocarMinutosController()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/':(context) => const HomePage(),
          'trocar':(context) => const TrocarMinutos(),
        },
      ),
    );
  }
}