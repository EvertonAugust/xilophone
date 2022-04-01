import 'package:audioplayers/audioplayers.dart';
import "package:flutter/material.dart";

main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Xilophone'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.black, numero: 1),
                  criarBotaoXilofone(cor: Colors.white, numero: 2),
                  criarBotaoXilofone(cor: Colors.black, numero: 3),
                  criarBotaoXilofone(cor: Colors.white, numero: 4),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.white, numero: 1),
                  criarBotaoXilofone(cor: Colors.black, numero: 2),
                  criarBotaoXilofone(cor: Colors.white, numero: 3),
                  criarBotaoXilofone(cor: Colors.black, numero: 4),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.black, numero: 5),
                  criarBotaoXilofone(cor: Colors.white, numero: 6),
                  criarBotaoXilofone(cor: Colors.black, numero: 7),
                  criarBotaoXilofone(cor: Colors.white, numero: 1),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  criarBotaoXilofone(cor: Colors.white, numero: 1),
                  criarBotaoXilofone(cor: Colors.black, numero: 2),
                  criarBotaoXilofone(cor: Colors.white, numero: 3),
                  criarBotaoXilofone(cor: Colors.black, numero: 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget criarBotaoXilofone({Color? cor, int? numero}) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.black38,
        onTap: () {
          var player = AudioCache();
          player.play('sounds/note$numero.wav');
        },
        child: Ink(color: cor),
      ),
    );
  }
}
