import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() => setState(() => counter++);
  void decrease() => setState(() => counter--);
  void toZero() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    TextStyle fontSize20 = const TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Clicks Counter',
                style: fontSize20,
              ),
              Text(
                '$counter',
                style: fontSize30,
              )
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        increaseFn: increase,
        decreaseFn: decrease,
        toZeroFn: toZero,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function toZeroFn;
  const CustomFloatingActionButton({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.toZeroFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1),
        ),
        FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () => toZeroFn(),
          child: const Icon(Icons.exposure_outlined),
        ),
        FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}
