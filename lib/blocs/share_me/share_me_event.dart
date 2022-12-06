part of 'share_me_bloc.dart';

@immutable
abstract class ShareMeEvent {}

class OnShareMeInc extends ShareMeEvent {
  final int counter;
  OnShareMeInc({required this.counter});
}

class OnShareMeDec extends ShareMeEvent {
  final int counter;
  OnShareMeDec({required this.counter});
}
