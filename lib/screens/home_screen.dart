import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    TextStyle fontSize20 = const TextStyle(fontSize: 20);
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomerScreen'),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          counter++;
          print('onPressed: $counter');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
