import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/counter/counter_bloc.dart';

class ButtonFloatingWidget extends StatelessWidget {
  const ButtonFloatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // Floating Action Button
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncreamentEvent());
          },
          child: const Icon(Icons.add),
        ),

        // Sized Box
        const SizedBox(
          height: 10,
        ),

        // Floating Action Button
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetEvent());
          },
          child: const Icon(Icons.exposure_zero),
        ),

        // Sized Box
        const SizedBox(
          height: 10,
        ),

        // Floating Action Button
        FloatingActionButton(
          onPressed: () {
            //  BlocProvider.of<CounterBloc>(context).add(DecreamentEvent());
            context.read<CounterBloc>().add(DecreamentEvent());
          },
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}