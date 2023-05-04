import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(ComponenteInicial());
}
class ComponenteInicial extends StatefulWidget {
  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}
class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;

  var perguntas = [
    "Qual seu cpf?",
    "Qual seu endereço?",
    "Qual seu nome completo?",
    "Qual seu cnpj?"
  ];
  void eventoBotao() {
    setState(() {
      contador:
      contador++;
    });
    print(contador);
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("ATIVIDADE- Anne Assunção"),
          ),
          body: Column(
            children: [
              Text(perguntas[contador]),
              ElevatedButton(onPressed: eventoBotao, child: Text("ENVIAR")),
              ElevatedButton(onPressed: eventoBotao, child: Text("CANCELAR")),
              ElevatedButton(onPressed: eventoBotao, child: Text("SALVAR")),
            ],
          )),
    );
  }
}