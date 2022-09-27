
import 'package:flutter/material.dart';
import 'package:web_flutter_1/locator.dart';
import 'package:web_flutter_1/router/fluro_router.dart';
import 'package:web_flutter_1/router/route.dart';
import 'package:web_flutter_1/services/navigation_services.dart';
import 'package:web_flutter_1/ui/layout/main_layout_page.dart';


void main() {
  
   setupLocator();
   Fluroroutter.configureRoutes();
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',

     // onGenerateRoute:RouteGenerator.generateRoute,
     onGenerateRoute: Fluroroutter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (context,child){
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },

      theme: ThemeData().copyWith(
        primaryColor: Colors.white
      ),
     
    );
  }
}