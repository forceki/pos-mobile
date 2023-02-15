import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Profle extends StatefulWidget {
  const Profle({super.key});

  @override
  State<Profle> createState() => _ProfleState();
}

class _ProfleState extends State<Profle> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("profile"),
    );
  }
}