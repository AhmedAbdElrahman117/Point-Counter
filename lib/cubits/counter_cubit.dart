import 'package:basketball_points_counter/cubits/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitial());

  int teamACounter = 0;
  int teamBCounter = 0;

  void teamAIncerement(int buttonNumber) {
    teamACounter += buttonNumber;
    emit(CounterAIncrement());
  }

  void teamBIncerement(int buttonNumber) {
    teamBCounter += buttonNumber;
    emit(CounterBIncrement());
  }
}
