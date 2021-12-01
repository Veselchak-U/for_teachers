import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mos_teacher/app/theme/app_theme.dart';
import 'package:mos_teacher/features/main_scene/bloc/main_scene_cubit.dart';

class MainScene extends StatelessWidget {
  const MainScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const MainSceneView(),
    );
  }
}

class MainSceneView extends StatelessWidget {
  const MainSceneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context).theme;
    final text = AppTheme.of(context).text;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Счётчик',
          style: text.s16w7h24,
        ),
        backgroundColor: theme.primaryColorLight,
      ),
      body: const Center(child: CounterText()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context).theme;
    final text = AppTheme.of(context).text;
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text(
      '$count',
      style: text.s32w7.copyWith(color: theme.primaryColorLight),
    );
  }
}
