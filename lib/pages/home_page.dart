import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc/blocs/share_me/share_me_bloc.dart';
import 'package:multibloc/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiBLoC Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              BlocBuilder<ShareMeBloc, ShareMeState>(
                builder: (context, state) {
                  return Text(
                    '${state.counter}',
                    style: const TextStyle(fontSize: 50),
                  );
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
                    Navigator.of(context).pushNamed(AppRoutes.next);
                  },
                  child: const Text('Goto Next page')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.third);
                  },
                  child: const Text('Goto Third page'))
            ],
          ),
        ),
      ),
    );
  }
}
