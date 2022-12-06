import 'package:get_it/get_it.dart';
import 'package:multibloc/blocs/share_me/share_me_bloc.dart';
import 'package:multibloc/blocs/stamp_me/stamp_me_bloc.dart';

final locator = GetIt.instance;

void init() {
  // bloc
  locator.registerLazySingleton(() => ShareMeBloc());
  locator.registerLazySingleton(() => StampMeBloc());
}
