import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(int increment) {
    setState(() {
      _counter += increment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20), // Space between counter and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildIncrementButton(100),
                const SizedBox(width: 10),
                _buildIncrementButton(50),
                const SizedBox(width: 10),
                _buildIncrementButton(25),
                const SizedBox(width: 10),
                _buildIncrementButton(5),
                const SizedBox(width: 10),
                _buildIncrementButton(1),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIncrementButton(int increment) {
    return Column(
      children: [
        Text(
          '+$increment',
          style: const TextStyle(fontSize: 16),
        ),
        ElevatedButton(
          onPressed: () => _incrementCounter(increment),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 24,
          ),
        ),
      ],
    );
  }
}
