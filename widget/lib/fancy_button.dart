import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {

  FancyButton({@required this.onPressed});
  
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
   return 
    RawMaterialButton(
     fillColor: Colors.deepOrange,
     splashColor: Colors.orange,
     child: Padding(
       padding: const EdgeInsets.symmetric(
         vertical: 8,
         horizontal: 20
       ),
       child: Row(
         mainAxisSize: MainAxisSize.min,
         mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget>[
           RotatedBox(
             quarterTurns: 1,
             child: Icon(
             Icons.explore,
             color:Colors.amber
           )),
           SizedBox(width: 8,),
           Text('THANH TOÁN',style: TextStyle(color: Colors.white))
         ],
       )
     ),
     onPressed: onPressed,
     shape: const StadiumBorder(),
   );
  }
}