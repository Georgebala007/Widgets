import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Csk Count',
      theme: ThemeData(


        primarySwatch: Colors.yellow,

      ),
      home: const MyHomePage(title: 'Chennai Super Kings'),
      backgroundColour:Colors.yellow
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);




  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter=0;

  void _incrementCounter() {
    setState(() {


      _counter=_counter+2;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        title: Text(widget.title),
      ),
      body: Center(



        child: Column(



          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Text(
              'CSK',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add_reaction_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
