import 'package:flutter/material.dart';
import 'package:flutter_application_1/numberbutton.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController tx = TextEditingController();
  String f(){
    return tx.text;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
       // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(
              height: 20,
            ),
             TextField(
              readOnly: true,
              textAlign: TextAlign.end,
              controller: tx,
                keyboardType: TextInputType.numberWithOptions(decimal: true,signed: true),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                         width: 2,
                         style: BorderStyle.solid,
                      ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                         width: 2,
                         style: BorderStyle.solid,
                      ),
                  ),
                ),
             ),
              SizedBox(
              height: 30,
             ),
              SizedBox(
              width: 300,
               child: Column(
                children:[
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                   NumberButton(name:  '1',f: (){  tx.text='${tx.text}1';}),
                   NumberButton(name:  '2',f: (){  tx.text='${tx.text}2';}),
                   NumberButton(name:  '3',f: (){  tx.text='${tx.text}3';}),
                   NumberButton(name:  '+',f: (){  tx.text='${tx.text}3';}),
              ],
            ),
            SizedBox(
              height: 30,
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                   NumberButton(name:  '4',f: (){  tx.text='${tx.text}4';}),
                   NumberButton(name:  '5',f: (){  tx.text='${tx.text}5';}),
                   NumberButton(name:  '6',f: (){  tx.text='${tx.text}6';}),
                   NumberButton(name:  '-',f: (){  tx.text='${tx.text}3';}),
              ], 
            ),
            SizedBox(
              height: 30,
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                   NumberButton(name:  '7',f: (){  tx.text='${tx.text}7';}),
                   NumberButton(name:  '8',f: (){  tx.text='${tx.text}8';}),
                   NumberButton(name:  '9',f: (){  tx.text='${tx.text}9';}),
                   NumberButton(name:  '*',f: (){  tx.text='${tx.text}3';}),
              ],
            ),
              SizedBox(
              height: 30,
             ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   NumberButton(name:  'CE',f: (){  tx.text='${tx.text.toString().substring(0,tx.text.length-1)}';}),
                   NumberButton(name:  'Clr',f: (){  tx.text='';}),
                   NumberButton(name:  '=',f: (){  tx.text='${tx.text}3';}),
               ],),
                ],
               ),
           
             ),
            
          ],
      ),
    );
  }
}