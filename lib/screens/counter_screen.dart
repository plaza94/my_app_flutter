import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //variable , propiedad
  int counter = 0;

  void increased() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void restart() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increased,
        decreaseFn: decrease,
        restartFn: restart,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function restartFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.restartFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => increaseFn(),
          //() => setState(() => counter++)
        ),
        //print('hola mundo');
        // counter++;
        //setState(() {});

        /*  const SizedBox(
          width: 20,
        ),*/
        FloatingActionButton(
          child: const Icon(Icons.restart_alt_sharp),
          onPressed: () => restartFn(),
          //() => setState(() => counter=0),
          /*onPressed: () {
            //print('hola mundo');
            counter = 0;
            setState(() {});
          },*/
        ),
        /*const SizedBox(
          width: 20,
        ),*/
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decreaseFn(),
          //() => setState(() => counter--),
          /*onPressed: () {
            //print('hola mundo');
            counter--;
            setState(() {});
          },*/
        ),
      ],
    );
  }
}
