import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_flutter_1/ui/shared/custom_flat.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("404",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold),),
            SizedBox(height:10),
               Text("No se encontro la pagina ",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),

               CustomButton(onPressed: (){
                Navigator.pushNamed(context, '/');
               }, text: 'Regresar')
          ],
        ),
      ),
      
    );
  }
}