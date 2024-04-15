import 'dart:ffi';

import 'package:flutter/material.dart';

class CheckBoxTilerPractice extends StatefulWidget {
  const CheckBoxTilerPractice({Key? key}) : super(key: key);

  @override
  State<CheckBoxTilerPractice> createState() => _CheckBoxTilerPracticeState();
}

class _CheckBoxTilerPracticeState extends State<CheckBoxTilerPractice> {
  late List<bool>_isChecked;

  List<String>_sites=['chennai','Mumbai','Kolkata'];
  @override
  void initState(){
    super.initState();
    _isChecked=List<bool>.filled(_sites.length, false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount:_sites.length ,
            itemBuilder: (context,index){
            return CheckboxListTile(
              title:Text (_sites[index]),
                value: _isChecked[index],
                onChanged: (value){
                setState(() {
                  _isChecked[index]=value!;
                });
                }
            );
            }
        ),
      ),
    );
  }
}
