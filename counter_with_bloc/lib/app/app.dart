import 'package:counter_with_bloc/cubit/counter_cubit.dart';
import 'package:counter_with_bloc/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2
    return BlocProvider(
      // кайсыл bloc менен колдонгонубузду беребиз
      create: (context) => CounterCubit(), // CounterCubit() => колдондук
      child: MaterialApp(
        // MaterialApp ти BlocProvider ге оройбуз
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}
