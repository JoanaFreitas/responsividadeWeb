import 'package:flutter/material.dart';

class ResposividadeMediaQuery extends StatelessWidget {
  const ResposividadeMediaQuery({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var largura= MediaQuery.of(context).size.width;
   var altura= MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar= AppBar().preferredSize.height;
    var larguraItem=largura/3;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsiviade'),
      ),
      body: Row(
        children: [
          Container(
            width: larguraItem,
            height: altura-alturaBarraStatus-alturaAppBar,
            color: Colors.red,
            child: Text('Responsiviade1'),
          ),
           Container(
            width: larguraItem,
            height: altura-alturaBarraStatus-alturaAppBar,
            color: Colors.green,
            child: Text('Responsiviade2'),
          ),
           Container(
            width: larguraItem,
            height: altura-alturaBarraStatus-alturaAppBar,
            color: Colors.yellow,
            child: Text('Responsiviade3'),
          )
        ],
      ),
    );
  }
}