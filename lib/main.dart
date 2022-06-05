import 'package:api_bloc/presentation/router/app_router.dart';
import 'package:api_bloc/presentation/screens/home_screens.dart';
import 'package:api_bloc/presentation/screens/second_screen.dart';
import 'package:api_bloc/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  // final CounterCubit _counterCubit = CounterCubit();
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute:_appRouter.onGenerateRoute ,
        initialRoute: '/',
        
      ),
    );
  }
}
  


