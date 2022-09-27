import 'package:flutter/material.dart';
import 'package:web_flutter_1/ui/shared/custom_flat.dart';
import 'package:web_flutter_1/ui/shared/custom_menu.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int counter = 10;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CustomMenu(),
          Spacer(),

          Text('Contador Statefull',style:TextStyle(fontSize: 20)),

        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Text('Contador:$counter',
            style:const TextStyle(fontSize:80,fontWeight: FontWeight.bold)),
          ),
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: (){
                setState(() {
                  counter++;
                });
              }, 
              text: 'Incrementar'),

              CustomButton(
              onPressed: (){
                setState(() {
                  counter--;
                });
              }, 
              text: 'Decrementar'),
          ],
        ),
        Spacer(),
      ]),
    );
    
  }
}