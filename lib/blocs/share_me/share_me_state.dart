// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'share_me_bloc.dart';

class ShareMeState extends Equatable {
  final int counter;
  const ShareMeState({required this.counter});

  ShareMeState copyWith({
    int? counter,
  }) {
    return ShareMeState(
      counter: counter ?? this.counter,
    );
  }

  @override
  List<Object?> get props => [counter];
}
