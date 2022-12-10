import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          //crossAxisAlignment:
          // CrossAxisAlignment.end, //centra desde izquierda a derecha
          mainAxisAlignment:
              MainAxisAlignment.center, //centra desde arriba hacia abajo
          children: const <Widget>[
            Text(
              'Contador de Clicks',
              style: fontSize30,
            ),
            Text(
              '0',
              style: fontSize30,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          print('hola mundo');
        },
      ),
    );
  }
}
