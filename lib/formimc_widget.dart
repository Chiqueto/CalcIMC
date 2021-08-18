import 'package:flutter/material.dart';

class FormIMC extends StatefulWidget {
  const FormIMC({Key? key}) : super(key: key);

  @override
  _FormIMCState createState() => _FormIMCState();
}

class _FormIMCState extends State<FormIMC> {
var imc = 0.0;

  @override
  Widget build(BuildContext context) {
    final alturacontroller = TextEditingController();
    final pesocontroller = TextEditingController();
    
    
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      child: Column( 
        children :[
              TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.height),
                       labelText: "Altura",
                       hintText: "Centimetros"), 
                      
                    controller: alturacontroller,
              ),
              SizedBox(height: 10,),
              TextField(
                    decoration: InputDecoration(prefixIcon: Icon(Icons.height),
                      labelText: "Peso",
                      hintText: "KG"),
                    controller: pesocontroller,
         ),
         SizedBox(height: 20,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             ElevatedButton(
               child: Text("Limpar"),
               style: ElevatedButton.styleFrom(primary: Colors.yellow[900]),
               onPressed: () {
                 alturacontroller.clear();
                 pesocontroller.clear();
               },
               ),
              ElevatedButton(
               child: Text("Calcular"),
               onPressed: () {
              double peso = double.tryParse(pesocontroller.value.text) ?? 0.0;
              double altura = double.tryParse(alturacontroller.value.text) ?? 0.0;
              
              if (altura==0) {
                print("Não é possivel dividir por zero!");
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Não é possivel dividir por zero!"),));
              } else{
                setState(() {
                  imc = (peso * peso)/altura;
                });

                print(imc);
              }
            },
          )
        ],
      ),
         Row(
           children: [
              Expanded(
               child: Card(
                 color: Colors.blue[100],
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: (imc > 0) ? Text("IMC ${imc.toStringAsFixed(2)}"):Text("Digite sua altura e peso: "),
                 ),        
               ),
             ),
           ],
         )
        ],
      ),
    );
  }
}