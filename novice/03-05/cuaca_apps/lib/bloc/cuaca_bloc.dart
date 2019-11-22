import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CuacaBloc extends Bloc<CuacaEvent, CuacaState> {
  @override
  CuacaState get initialState => InitialCuacaState();

  @override
  Stream<CuacaState> mapEventToState(
    CuacaEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
