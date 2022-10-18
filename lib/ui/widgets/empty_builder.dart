

import 'package:flutter/cupertino.dart';

class EmptyBuilder extends StatelessWidget {
  const EmptyBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
        "No tasks at the moment\nTap add task button to create one");
  }
}
