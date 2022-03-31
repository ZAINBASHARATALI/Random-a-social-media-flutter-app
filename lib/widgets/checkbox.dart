import 'package:flutter/material.dart';

class CheckBoxx extends StatefulWidget {
  const CheckBoxx({Key? key}) : super(key: key);

  @override
  State<CheckBoxx> createState() => _CheckBoxxState();
}

class _CheckBoxxState extends State<CheckBoxx> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischecked,
      onChanged: (val) {
        ischecked = val!;
        setState(() {});
      },
    );
  }
}
