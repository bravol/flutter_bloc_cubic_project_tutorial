import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubic_project/bloc/counter_bloc.dart';
import 'package:flutter_bloc_cubic_project/cubit/counter_cubit.dart';
import 'package:flutter_bloc_cubic_project/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //wrapping our app with the BlocProvider so that we can access it anywhere in the app
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubitClass()),
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
