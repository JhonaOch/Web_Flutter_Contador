import 'package:flutter/material.dart';
import 'package:web_flutter_1/ui/shared/custom_flat.dart';

class CounterView extends StatefulWidget {
  final String base;
  const CounterView({Key? key, required this.base}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;

  @override
  void initState() {
    super.initState();
    if (int.tryParse(widget.base) != null) {
      counter = int.parse(widget.base);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      // CustomMenu(),
      //Spacer(),

      const Text('Contador Statefull', style: TextStyle(fontSize: 20)),

      FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('Contador:$counter',
              style:
                  const TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
        ),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              text: 'Incrementar'),
          CustomButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              text: 'Decrementar'),
        ],
      ),
      // Spacer(),
    ]);
  }
}
