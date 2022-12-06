// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'stamp_me_bloc.dart';

class StampMeState extends Equatable {
  final String message;
  const StampMeState({required this.message});

  @override
  List<Object> get props => [message];

  StampMeState copyWith({
    String? message,
  }) {
    return StampMeState(
      message: message ?? this.message,
    );
  }
}
