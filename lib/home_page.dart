import 'package:counter_bloc_app/bloc/counter_bloc.dart';
import 'package:counter_bloc_app/bloc/counter_event.dart';
import 'package:counter_bloc_app/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Bloc App"),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          
          return Column(
            
            children: [
              Text(
                state.counter.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(
                      sign: "-",
                      onTap: () {
                        BlocProvider.of<CounterBloc>(context)
                            .add(NumberDecreaseEvent());
                      },
                      color: Colors.red),
                  Button(
                      sign: "+",
                      onTap: () {
                        BlocProvider.of<CounterBloc>(context)
                            .add(NumberIncreaseEvent());
                      },
                      color: Colors.green),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String sign;
  final VoidCallback onTap;
  final Color color;
  const Button({
    super.key,
    required this.sign,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: color,
        height: 80,
        width: 120,
        child: Center(child: Text(sign)),
      ),
    );
  }
}
