import 'package:flutter/material.dart';

class RadioButtonPractice extends StatefulWidget {
  const RadioButtonPractice({Key? key}) : super(key: key);

  @override
  State<RadioButtonPractice> createState() => _RadioButtonPracticeState();
}

class _RadioButtonPracticeState extends State<RadioButtonPractice> {
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('radio Button'),
      ),
      body: SafeArea(
        child:Column(
          children: [
            Row(
              children: [
                Text('Do You Want Eat'),
                Radio(value: 'yes',
                    groupValue: selectedValue,
                    onChanged: (value)
                {
                  setState(() {
                    selectedValue=value;
                  });
                }),
                Text('Yes'),
                Radio(value: 'No',
                    groupValue: selectedValue,
                    onChanged: (value)
                    {
                      setState(() {
                        selectedValue=value;
                      });
                    }),
                Text('No')



              ],
            )
          ],
        ) ,
      ),
    );
  }
}
