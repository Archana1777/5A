import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Stateless Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// Stateful Widget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless and Stateful Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Stateless widget displaying static text
            Text(
              'This text is in a stateless widget:',
            ),
            SizedBox(height: 10),
            Text(
              'You have pressed the button this many times:',
            ),
            SizedBox(height: 10),
            // Stateful widget displaying dynamic text
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
