

import 'package:flutter/cupertino.dart';

import 'package:web_flutter_1/ui/pages/counter_page.dart';
import 'package:web_flutter_1/ui/pages/counter_provider_page..dart';
import 'package:web_flutter_1/ui/pages/error_page.dart';

import 'package:flutter/foundation.dart';
import 'package:web_flutter_1/ui/view/counter_provider_view.dart';
import 'package:web_flutter_1/ui/view/counter_view.dart';
import 'package:web_flutter_1/ui/view/error_view.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch (settings.name){

      // case '/':
      //   return _fadeRoute(CounterView(),'/');

      // case '/statefull':
      //    return _fadeRoute(CounterView(),'/statefull');

      // case '/provider':
      //   return _fadeRoute(CounterProviderView(),'/provider');

      default: 
       return _fadeRoute(ErrorView(),'/404');

    }


  }

   static PageRoute _fadeRoute(Widget child,String routename){

    return PageRouteBuilder(
      settings: RouteSettings(name:routename),
      pageBuilder: (_,__,___)=> child,
      transitionDuration:const Duration(milliseconds: 200),
      transitionsBuilder: (_,animation, __,___)=> 

      (kIsWeb) ?
     FadeTransition(opacity: animation, child:child)
     : 
     CupertinoPageTransition(
      primaryRouteAnimation: animation,
      secondaryRouteAnimation: __,
      linearTransition: true,
      child: child,
     )
      );
      
     

   }
}