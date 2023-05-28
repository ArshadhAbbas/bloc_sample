import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'name_event.dart';
part 'name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  NameBloc() : super(InitialState()) {
    on<ChangeName>((event, emit) {
      final newName = (event).newName;
      return emit(NameState(name:newName));
    });
  }
}
