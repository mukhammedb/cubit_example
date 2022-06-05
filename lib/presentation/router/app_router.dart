

import 'package:api_bloc/presentation/screens/home_screens.dart';
import 'package:api_bloc/presentation/screens/second_screen.dart';
import 'package:api_bloc/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  
   Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name){
      case'/':
     return MaterialPageRoute(builder: (_) =>
     HomeScreen(title: 'HomeScreen',
      color: Colors.blueAccent)
     );
      case'/second':
     return MaterialPageRoute(builder: (_) =>
     SecondScreen(title: 'SecondScreen',
      color: Colors.redAccent)
     );
      case'/third':
     return MaterialPageRoute(builder: (_) =>
     ThirdScreen(title: 'ThirdScreen',
      color: Colors.greenAccent)
     );
     default: 
     return MaterialPageRoute(builder: (_) =>
     ThirdScreen(title: 'ThirdScreen',
      color: Colors.greenAccent)
     );
    } 

   

   }

   
}