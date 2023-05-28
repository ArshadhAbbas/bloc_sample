import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'name/name_bloc.dart';

void main() {
  runApp(const Name());
}

class Name extends StatelessWidget {
  const Name({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NameBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: YourName(),
      ),
    );
  }
}

class YourName extends StatelessWidget {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      final newName=nameController.text;
                      context.read<NameBloc>().add(ChangeName(newName));
                    },
                    child: const Text("Enter")),
                BlocBuilder<NameBloc, NameState>(
                  builder: (context, state) {
                    return Text("Hello ${state.name} ");
                  },
                )
              ],
            ),
          ),
        ));
  }
}
