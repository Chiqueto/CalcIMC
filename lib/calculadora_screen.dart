import 'package:flutter/material.dart';

import 'formimc_widget.dart';

class CalculadoraScreen extends StatelessWidget {
  const CalculadoraScreen({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 3,
                child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(   
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200], 
                ),
                child: Text(
                  "Faça o cálculo de seu Índice de Massa Corporal",
                  style: TextStyle(fontWeight: FontWeight.w900, 
                  fontSize: 20, 
                  fontFamily: 'Roboto',
                  shadows: kElevationToShadow[2]),
                  softWrap: true,
              )),
           ),
          
            FormIMC()
            ],
          )
        ],
      )
    );
  }
}