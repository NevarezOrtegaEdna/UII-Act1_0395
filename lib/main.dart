import 'package:flutter/material.dart';
import 'package:nevarez0395/pantallas0395/panel0395/panel_pantalla0395.dart';

void main() => runApp(const MiAppInmobiliaria0395());

class MiAppInmobiliaria0395 extends StatelessWidget {
  const MiAppInmobiliaria0395({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Inmobiliaria Nevarez 0395",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff4260a2)),
          useMaterial3: true),
      home: const PanelPantalla0395(),
    );
  }
}
