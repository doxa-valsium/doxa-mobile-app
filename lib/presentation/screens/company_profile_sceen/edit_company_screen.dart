import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

class EditCompanyScreen extends StatelessWidget {
  static const String route = 'edit-company-screen';
  const EditCompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Edit Company Screen'),
        ),
      ),
    );
  }
}
