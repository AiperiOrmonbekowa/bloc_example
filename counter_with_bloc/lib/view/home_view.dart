import 'package:counter_with_bloc/cubit/counter_cubit.dart';
import 'package:counter_with_bloc/view/second_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with bloc'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${context.watch<CounterCubit>().state}', // Text(context.watch<CounterCubit>().state.toString()), => Counter_cubit.dart файлндагы <CounterCubit> алып келип берет
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondView(),
                    ),
                  );
                },
                child: const Text('Go Second View'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<CounterCubit>().increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
