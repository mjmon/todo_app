import 'package:flutter/material.dart';

class ErrorBuilder extends StatelessWidget {
  const ErrorBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Some error occured, Please try again"));
  }
}
