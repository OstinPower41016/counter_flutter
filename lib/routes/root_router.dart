// ignore_for_file: overridden_fields

import 'package:counter_app/views/error404.dart';
import 'package:get/route_manager.dart';

import '../views/home.dart';

class RootRouter extends GetMaterialApp {
  RootRouter({super.key});

  @override
  final initialRoute = "/";
  @override
  final unknownRoute = GetPage(name: "/notfound", page: () => Error404()); 
  @override
  final getPages = [
    GetPage(name: "/", page: () => Home())
  ];

}


