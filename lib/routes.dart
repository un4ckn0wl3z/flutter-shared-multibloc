import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc/blocs/share_me/share_me_bloc.dart';
import 'package:multibloc/blocs/stamp_me/stamp_me_bloc.dart';
import 'package:multibloc/pages/home_page.dart';
import 'package:multibloc/pages/next_page.dart';
import 'package:multibloc/dependencies_container.dart' as di;
import 'package:multibloc/pages/third_page.dart';

var routes = {
  AppRoutes.home: (context) => BlocProvider.value(
        value: di.locator<ShareMeBloc>(),
        child: const HomePage(),
      ),
  AppRoutes.next: (context) => BlocProvider.value(
        value: di.locator<ShareMeBloc>(),
        child: const NextPage(),
      ),
  AppRoutes.third: (context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: di.locator<ShareMeBloc>()),
          BlocProvider.value(value: di.locator<StampMeBloc>()),
        ],
        child: const ThirdPage(),
      ),
};

class AppRoutes {
  static final AppRoutes _singleton = AppRoutes._internal();
  static const String home = '/home';
  static const String next = '/next';
  static const String third = '/third';

  factory AppRoutes() {
    return _singleton;
  }

  AppRoutes._internal();
}
