
import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int _counter = 15;
  CounterProvider( String base){
    if(int.tryParse(base)!= null){
      _counter = int.parse(base);
    }
  }
  

  int get counter => _counter;

  void increment(){

    _counter++;
    notifyListeners();
  }

   void decrement(){

    _counter--;
     notifyListeners();
  }

}