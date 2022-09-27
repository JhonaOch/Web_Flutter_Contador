import 'package:fluro/fluro.dart';
import 'package:web_flutter_1/router/handler_router.dart';

class Fluroroutter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',handler: couterHandler, transitionType: TransitionType.none);
    router.define('/statefull',handler: couterHandler, transitionType: TransitionType.none);
    //Todo argumentos requeridos
    router.define('/statefull/:base',handler: couterHandler, transitionType: TransitionType.none);
    router.define('/provider',handler: providerHandler, transitionType: TransitionType.none);
    router.define('/dashboard/users/:userid/:roleid',handler: dasboardHandler, transitionType: TransitionType.none);
    
    
    router.notFoundHandler = errorHandler;
  }

  //Handlers

}
