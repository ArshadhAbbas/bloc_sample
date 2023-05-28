part of 'name_bloc.dart';

class NameState {
  final String name;
  NameState({
    required this.name,
  });
}

class InitialState extends NameState{
  InitialState():super(name: '');
}
