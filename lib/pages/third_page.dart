import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc/blocs/share_me/share_me_bloc.dart';
import 'package:multibloc/blocs/stamp_me/stamp_me_bloc.dart';
import 'package:multibloc/routes.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiBLoC Third Page '),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              BlocConsumer<ShareMeBloc, ShareMeState>(
                listener: (context, state) {
                  DateTime now = DateTime.now();
                  String isoDate = now.toIso8601String();
                  context
                      .read<StampMeBloc>()
                      .add(StampMeEvent(message: isoDate));
                },
                builder: (context, state) {
                  return Text(
                    '${state.counter}',
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ),
              BlocBuilder<StampMeBloc, StampMeState>(
                builder: (context, state) {
                  return Text('Timestamp: ${state.message}');
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<ShareMeBloc>().add(OnShareMeInc(counter: 1));
                  },
                  child: const Text('+')),
              ElevatedButton(
                  onPressed: () {
                    context.read<ShareMeBloc>().add(OnShareMeDec(counter: 1));
                  },
                  child: const Text('-')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Back')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.next);
                  },
                  child: const Text('Goto Next page')),
            ],
          ),
        ),
      ),
    );
  }
}
