import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/session_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionScreen extends StatelessWidget {
  final String? firstName;
  final String? lastName;
  const SessionScreen({Key? key, required this.firstName, required this.lastName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello $firstName $lastName'),
          TextButton(
            onPressed: () {
              BlocProvider.of<SessionCubit>(context).signOut();
            },
            child: const Text('Sign Out..'),
          ),
        ],
      )),
    );
  }
}
