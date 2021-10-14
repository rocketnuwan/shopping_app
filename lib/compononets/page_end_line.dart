import 'package:flutter/material.dart';

class PageEndLine extends StatelessWidget {
  const PageEndLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
       children: (const[
         SizedBox(height: 15,),
         SizedBox(
           width: 200,
           child: Divider( 
             thickness: 5,
             ),
           ),
       ]),
     ),
              );
  }
}

