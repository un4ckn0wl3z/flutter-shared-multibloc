import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc/blocs/share_me/share_me_bloc.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiBLoC Next Page'),
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
                    Navigator.of(context).pop();
                  },
                  child: const Text('Back'))
            ],
          ),
        ),
      ),
    );
  }
}
