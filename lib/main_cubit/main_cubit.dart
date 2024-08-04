import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:idt_flutter/data/enum/goal.dart';

part "main_cubit.freezed.dart";

part "main_state.dart";

class MainCubit extends Cubit<MainState> {
  MainCubit()
      : super(
          const MainState(
            goal: Goal.fatLoss,
          ),
        );

  void setGoal(Goal goal) {
    emit(state.copyWith(goal: goal));
  }
}
