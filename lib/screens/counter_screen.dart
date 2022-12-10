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

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.plus_one),
            onPressed: () {
              //print('hola mundo');
              counter++;
              setState(() {});
            },
          ),
          /*  const SizedBox(
            width: 20,
          ),*/
          FloatingActionButton(
            child: const Icon(Icons.restart_alt_sharp),
            onPressed: () {
              //print('hola mundo');
              counter = 0;
              setState(() {});
            },
          ),
          /*const SizedBox(
            width: 20,
          ),*/
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () {
              //print('hola mundo');
              counter--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
