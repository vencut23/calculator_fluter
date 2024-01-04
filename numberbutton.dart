import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final String name;
  final Function? f;
  const NumberButton({super.key,required 
   this.name, this.f
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      f!();
    }, child: Text(
      '$name'
    ),
    style: TextButton.styleFrom(
      side: const BorderSide(
        width: 2,
      ),
      fixedSize: const Size.square(70),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(
          width: 1,
        ),
      )
    ),
    );
  }
}