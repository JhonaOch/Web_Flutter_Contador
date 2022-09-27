


 import 'package:fluro/fluro.dart';
import 'package:web_flutter_1/ui/view/counter_provider_view.dart';
import 'package:web_flutter_1/ui/view/counter_view.dart';
import 'package:web_flutter_1/ui/view/error_view.dart';

final Handler couterHandler =
      Handler(handlerFunc: ((context, parameters) {
    return CounterView(base: parameters['base']?[0] ?? '5');
  }));

   final Handler providerHandler =
      Handler(handlerFunc: ((context, parameters) {
    return  CounterProviderView(base: parameters['q']?[0] ?? '10',);
  }));

    final Handler dasboardHandler =
      Handler(handlerFunc: ((context, parameters) {
    return const ErrorView();
  }));

   final Handler errorHandler =
      Handler(handlerFunc: ((context, parameters) => const ErrorView()));