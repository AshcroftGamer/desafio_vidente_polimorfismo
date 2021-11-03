import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: VidentVirtualPage(),
  ));
}

class VidentVirtualPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF332B25),
      appBar: AppBar(
        title: Text('Vidente Virtual'),
        backgroundColor: Colors.brown[800],
      ),
    );
  }
}
