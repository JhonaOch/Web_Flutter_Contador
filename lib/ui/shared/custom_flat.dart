import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final  Function onPressed;
  final String text;
  final Color color;
   const CustomButton({Key? key, required this.onPressed, required this.text, this.color=Colors.pink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
          style: TextButton.styleFrom(
            primary: color
          ),
          onPressed: ()=>onPressed(),

       child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(text),
        ));
    
  }
}