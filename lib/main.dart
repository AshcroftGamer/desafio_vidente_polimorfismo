import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: VidentVirtualPage(),
  ));
}

class VidentVirtualPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Vidente();
  }
}

class Vidente extends StatefulWidget {
  @override
  _VidenteState createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int numeroDaImagem = 1;

  void _mudaImagem(){
    setState(() {
      numeroDaImagem = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF332B25),
      appBar: AppBar(
        title: Text('Vidente Virtual'),
        backgroundColor: Colors.brown[800],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            _mudaImagem();
            print(numeroDaImagem);
          },
          child: Image.asset('imagens/vidente$numeroDaImagem.png'),
        ),
      ),
    );
  }
}
