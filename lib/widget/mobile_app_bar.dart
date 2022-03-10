import 'package:flutter/material.dart';

class MolibeAppBar extends StatelessWidget {
  const MolibeAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/images/logo.png',
      fit: BoxFit.contain,),
   actions: [
     IconButton(
       onPressed: (){}, 
       icon: Icon(Icons.search),
       ),
       IconButton(
       onPressed: (){}, 
       icon: Icon(Icons.shopping_cart_rounded),
       ),
       IconButton(
       onPressed: (){}, 
       icon: Icon(Icons.more_vert),
       ),
   ],
    );
  }
}