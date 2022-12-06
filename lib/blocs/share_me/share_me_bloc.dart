import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'share_me_event.dart';
part 'share_me_state.dart';

class ShareMeBloc extends Bloc<ShareMeEvent, ShareMeState> {
  ShareMeBloc() : super(const ShareMeState(counter: 0)) {
    on<OnShareMeInc>((event, emit) {
      emit(state.copyWith(counter: state.counter + event.counter));
    });

    on<OnShareMeDec>((event, emit) {
      emit(state.copyWith(counter: state.counter - event.counter));
    });
  }
}
