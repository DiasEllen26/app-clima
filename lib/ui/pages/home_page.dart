import 'package:api_pokemon/datasources/remote/clima_remote.dart';
import 'package:flutter/material.dart';

// O stf é uma tela que pode mudar, então utiliza o stf. é quando tem atualização.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Clima', style: TextStyle(color: Colors.blue.shade900)),
          backgroundColor: Colors.amber.shade500,
        ),
      ),
    );
  }
}
