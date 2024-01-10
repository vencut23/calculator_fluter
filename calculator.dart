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
  var textonboard='';
  var lop='+';
  var value=0;
  void evaluate(){
      switch(lop){
        case '+':
            value=value+int.parse(tx.text);
            textonboard= (value+int.parse(tx.text)).toString();
            break;
        case '-':
            value=value-int.parse(tx.text);
            textonboard= (value-int.parse(tx.text)).toString();
            break;
        case '*':
             value=value*int.parse(tx.text);
             textonboard= (value*int.parse(tx.text)).toString();
            break;
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
                centerTitle: true,
                title: const Text(
                  'Calculator',
                  style: TextStyle(
                    color: Colors.white70,
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    fontWeight:FontWeight.w400,
                  ),
                ),
                actions: [
                  IconButton(onPressed: (){
                    lop='+';
                     value=0;
                     setState(() {
                       textonboard='';
                     });
                  } , icon: Icon(Icons.refresh)),
                ],
              ),
       body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(textonboard.toString(),
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(183, 214, 214, 214),
              
                ),),
              ),
             const SizedBox(
                height: 20,
              ),
               TextField(
               // readOnly: true,
                textAlign: TextAlign.end,
                controller: tx,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true,signed: true),
                  decoration:const  InputDecoration(
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
                const SizedBox(
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
                     NumberButton(name:  '+',f: (){  
                      setState(() {
                         evaluate();
                         textonboard='$value+';
                         lop='+';
                        tx.text='';
                      });
                      }),
                ],
              ),
              const SizedBox(
                height: 30,
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                     NumberButton(name:  '4',f: (){  tx.text='${tx.text}4';}),
                     NumberButton(name:  '5',f: (){  tx.text='${tx.text}5';}),
                     NumberButton(name:  '6',f: (){  tx.text='${tx.text}6';}),
                     NumberButton(name:  '-',f: (){ 
                       setState(() {
                      evaluate();
                         textonboard='$value-';
                         lop='-';
                        tx.text='';
                      });
                     }),
                ], 
              ),
              const SizedBox(
                height: 30,
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                     NumberButton(name:  '7',f: (){  tx.text='${tx.text}7';}),
                     NumberButton(name:  '8',f: (){  tx.text='${tx.text}8';}),
                     NumberButton(name:  '9',f: (){  tx.text='${tx.text}9';}),
                     NumberButton(name:  '*',f: (){  
                       setState(() {
                       evaluate();
                         textonboard='$value*';
                         lop='*';
                        tx.text='';
                      });
                     }),
                ],
              ),
                const SizedBox(
                height: 30,
               ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     NumberButton(name:  'CE',f: (){  tx.text='${tx.text.toString().substring(0,tx.text.length-1)}';}),
                     NumberButton(name:  'Clr',f: (){  tx.text=' ';
                     lop='+';
                     value=0;
                     setState(() {
                       textonboard='';
                     });

                     }),
                     NumberButton(name:  '=',f: (){  tx.text='${tx.text}3';}),
                 ],),
                  ],
                 ),
             
               ),
              
            ],
        ),
      ),
    );
  }
}
