import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //variable , propiedad
  int counter = 0;

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
          children: <Widget>[
            const Text(
              'Contador de Clicks',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            )
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          //print('hola mundo');
          counter++;
          setState(() {});
        },
      ),
    );
  }
}
