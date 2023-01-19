import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(super.initialState);



  @override
  CounterState get initialState => CounterInitial();
  late int counter = 0;

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncreamentEvent) {
      counter += 1;
      emit(CounterValueChangedState(counter: counter));
    } else if (event is DecreamentEvent) {
      counter -= 1;
      emit(CounterValueChangedState(counter: counter));
    } else {
      counter = 0;
      emit(CounterValueChangedState(counter: counter));
    }
  }
}
