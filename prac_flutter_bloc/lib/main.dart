import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/movie_app.dart';
import 'src/counter_app.dart';

// Movie APP 실행 시 5~7 Line 주석 해제.
void main() {
  runApp(MovieApp());
}

// Counter APP 실행 시 10 ~ 29 Line 주석 해제.
// void main() {
//   BlocOverrides.runZoned(
//     () => runApp(const CounterApp()),
//     blocObserver: AppBlocObserver(),
//   );
// }

// /// Custom [BlocObserver] that observes all bloc and cubit state changes.
// class AppBlocObserver extends BlocObserver {
//   @override
//   void onChange(BlocBase bloc, Change change) {
//     super.onChange(bloc, change);
//     if (bloc is Cubit) print(change);
//   }

//   @override
//   void onTransition(Bloc bloc, Transition transition) {
//     super.onTransition(bloc, transition);
//     print(transition);
//   }
// }
