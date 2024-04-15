import 'package:flutter/material.dart';

class CheckBoxPractice extends StatefulWidget {
  const CheckBoxPractice({Key? key}) : super(key: key);

  @override
  State<CheckBoxPractice> createState() => _CheckBoxPracticeState();
}

class _CheckBoxPracticeState extends State<CheckBoxPractice> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Checkbox(value: isChecked,
                onChanged: (value){
              setState(() {
                isChecked=value!;
              });
            }
            ),
          ]
        ),
      ),
    );
  }
}
