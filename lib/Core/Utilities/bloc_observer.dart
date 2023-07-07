import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log(change.toString());
  }

  @override
  void onClose(BlocBase bloc) {
    log("Cubit Closed");
  }

  @override
  void onCreate(BlocBase bloc) {
    log("Cubit Created");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log("Cubit onError");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log("Cubit onEvent");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log("Cubit onTransition");
  }
}
