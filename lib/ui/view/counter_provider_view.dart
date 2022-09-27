import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter_1/providers/counter_provider.dart';
import 'package:web_flutter_1/ui/shared/custom_flat.dart';
import 'package:web_flutter_1/ui/shared/custom_menu.dart';

class CounterProviderView extends StatelessWidget {
  final String base;
  const CounterProviderView({Key? key
  ,required this.base }) : super(key: key);
@override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_)=> CounterProvider(base),
      child: _CouterProviderPageBody());
    
  }
}

class _CouterProviderPageBody extends StatelessWidget {
  const _CouterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //CustomMenu(),
         // Spacer(),

          Text('Contador Provider',style:TextStyle(fontSize: 20)),

        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Text('Contador:${counterProvider.counter}',
            style:const TextStyle(fontSize:80,fontWeight: FontWeight.bold)),
          ),
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: (){

                counterProvider.increment();
                // setState(() {
                //   counter++;
                // });
              }, 
              text: 'Incrementar'),

              CustomButton(
              onPressed: (){
                counterProvider.decrement();
                // setState(() {
                //   counter--;
                // });
              }, 
              text: 'Decrementar'),
          ],
        ),
        //Spacer(),
      ]);
    
  }
}