import 'package:flutter/material.dart';

void main() {
   runApp(ComponenteInicial());
}

class ComponenteInicial extends StatelessWidget{


  void enviar(){
  print("enviar");}
  void cancelar(){
  print("cancelar");}
  void salvar(){
  print("salvar");}

Widget build(BuildContext context){
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
          title: Text("APLICATIVO"),
    ),

    body:Column (children: [
      Text("Aprendendo"),
      Text("Programação"),
      Text("Flutter"),
      
        Column (children: [
          ElevatedButton(onPressed: enviar, child: Text("Enviar")),
          ElevatedButton(onPressed: cancelar, child: Text("Cancelar")),
          ElevatedButton(onPressed: salvar, child: Text("Salvar")),
        ],)
          ],
        ),
       ), 
      );
      
  }
}