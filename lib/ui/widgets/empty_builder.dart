import 'package:flutter/cupertino.dart';

class EmptyBuilder extends StatelessWidget {
  const EmptyBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No tasks at the moment\nTap `Add Task` button to create one",
        textAlign: TextAlign.center,
      ),
    );
  }
}
