
import 'package:flutter/material.dart';
import 'package:web_flutter_1/ui/shared/custom_menu.dart';
class MainLayoutPage extends StatelessWidget {

  final Widget child ;
  const MainLayoutPage({Key? key, required this.child}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Column(children: [
            CustomMenu(),
            Spacer(),

            Expanded(child: child),

            Spacer()
          ]),
        ),

    );
  }
}