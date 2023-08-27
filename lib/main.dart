import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Data/cubit/Getnews/getnews_cubit.dart';
import 'package:newsapp/Data/models/getnews_Mode.dart';
import 'package:newsapp/screens/frist.dart';
import 'package:newsapp/screens/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetNewsCubit>(
          create: (BuildContext context) => GetNewsCubit(),
        )
      ],
        
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        // ignore: prefer_const_constructors
        home:  FirtScreen( ),
    ));
  }
}
