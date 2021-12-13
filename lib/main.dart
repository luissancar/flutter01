import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Futter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Ejemplo Flutter'),
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
  var textoButton = "Button";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Texto 01",
                style: TextStyle(color: Colors.red, fontSize: 20)),
            const Text("Texto 02",
                style: TextStyle(color: Colors.blueAccent, fontSize: 25)),
            ElevatedButton(
              style: ButtonStyle(
                  maximumSize:
                      MaterialStateProperty.all(const Size(200.0, 100.0))),
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.audiotrack,
                          size: 10,
                        ),
                        Text(textoButton)
                      ])),
              onPressed: () {
                // ignore: avoid_print
                print('Pressed');
                setState(() {
                  if (textoButton == "Pulsado") {
                    textoButton = "Pulsar";
                  } else {
                    textoButton = "Pulsado";
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
