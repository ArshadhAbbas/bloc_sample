part of 'name_bloc.dart';

@immutable
abstract class NameEvent {}


class ChangeName extends NameEvent{
  final String newName;
  ChangeName(this.newName);
}
