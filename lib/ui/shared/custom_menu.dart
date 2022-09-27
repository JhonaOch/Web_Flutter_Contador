import 'package:flutter/material.dart';
import 'package:web_flutter_1/locator.dart';
import 'package:web_flutter_1/services/navigation_services.dart';
import 'package:web_flutter_1/ui/shared/custom_flat.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_,constraints) {
        return (constraints.maxWidth >720)
        ? _TableMenu()
        : _TableMenuMobile();

      });
  }
}

class _TableMenu extends StatelessWidget {
  const _TableMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(children: [
        CustomButton(onPressed: (){
         // Navigator.pushNamed(context, '/statefull');
         
        locator<NavigationService>().navigateTo('/statefull');

        }, text: 'Contador Statefull'),

        SizedBox(width: 10,),
         CustomButton(onPressed: (){
            //Navigator.pushNamed(context, '/provider');
           locator<NavigationService>().navigateTo('/provider');

        }, text: 'Contador Provider'),
        const SizedBox(width: 10,),
         CustomButton(onPressed: (){
                //Navigator.pushNamed(context, '/sssdd');
                locator<NavigationService>().navigateTo('/statefull/100');
               }, text: 'Statefull 100'),
         SizedBox(width: 10,),
         CustomButton(onPressed: (){
            //Navigator.pushNamed(context, '/provider');
           locator<NavigationService>().navigateTo('/provider?q=200');

        }, text: 'Provider 200'),
         CustomButton(onPressed: (){
                //Navigator.pushNamed(context, '/sssdd');
                locator<NavigationService>().navigateTo('/sssdd');
               }, text: 'Otra Pagina')

      ]),
    );
  }

}
  class _TableMenuMobile extends StatelessWidget {
  const _TableMenuMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomButton(onPressed: (){
         // Navigator.pushNamed(context, '/statefull');
         
        locator<NavigationService>().navigateTo('/statefull');

        }, text: 'Contador Statefull'),

        const SizedBox(width: 10,),
         CustomButton(onPressed: (){
            //Navigator.pushNamed(context, '/provider');
           locator<NavigationService>().navigateTo('/provider');

        }, text: 'Contador Provider'),
         const SizedBox(width: 10,),
         CustomButton(onPressed: (){
                //Navigator.pushNamed(context, '/sssdd');
                locator<NavigationService>().navigateTo('/statefull/100');
               }, text: 'Statefull 100'),
         const SizedBox(width: 10,),
         CustomButton(onPressed: (){
                //Navigator.pushNamed(context, '/sssdd');
                locator<NavigationService>().navigateTo('/sssdd');
               }, text: 'Otra Pagina')

      ]),
    );
  }

  
}