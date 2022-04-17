import 'package:doxa_mobile_app/business_logic/cubits/counter_cubit/counter_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/counter_screen/local_widgets/counter_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../services/environment_config_service.dart';

class CounterScreen extends StatelessWidget {
  static const String route = 'counter-screen';

  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: const SafeArea(child: Center(child: CounterText())),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Current Enviroment: ${EnvironmentConfigService.currentEnivironment.toString()}'),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
