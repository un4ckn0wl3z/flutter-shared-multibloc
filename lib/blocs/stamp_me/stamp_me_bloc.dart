import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'stamp_me_event.dart';
part 'stamp_me_state.dart';

class StampMeBloc extends Bloc<StampMeEvent, StampMeState> {
  StampMeBloc() : super(const StampMeState(message: 'Initialized...')) {
    on<StampMeEvent>((event, emit) {
      emit(state.copyWith(message: event.message));
    });
  }
}
