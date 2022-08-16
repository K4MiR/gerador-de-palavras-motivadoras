import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Frases do dia'),
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
  int _numeroAleatorio = 0;
  List _frases = [
    '"O importante não é vencer todos os dias, mas lutar sempre."',
    '"Nós o amamos porque ele nos amou primeiro."',
    '"Perder para a razão, sempre é ganhar."',
    '"O medo de perder tira a vontade de ganhar."',
    '"A persistência é o caminho do êxito."',
    '"Só existe um êxito: a capacidade de levar a vida que se quer."',
    '"A coragem não é ausência do medo; é a persistência apesar do medo."',
    '"O sucesso tem uma estranha capacidade de esconder o erro."',
    '"Creia em si, mas não duvide sempre dos outros."',
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(8); //0,1,2,3,4,5,6,7,8,9
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 120,
                  child: Text(
                    'Pressione o botão para obter uma nova palavra',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 20,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 180,
                  child: Text(
                    _frases[_numeroAleatorio],
                    style: GoogleFonts.abhayaLibre(
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
            Container(
                child: ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Text('Nova Palavra '))),
            Container(
              height: 250,
              alignment: Alignment.bottomCenter,
              child: Text(
                'Desenvolvido by Cleber',
                style: TextStyle(
                  color: Colors.black12,
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
