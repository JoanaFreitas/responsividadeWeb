import 'package:flutter/material.dart';

class WrapResponsividade extends StatelessWidget {
  const WrapResponsividade({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double altura=100;
    double largura=200;

    return Scaffold(
      appBar: AppBar(title:const Text('Wrap'),
      ),body: Container(
        color: Colors.black26,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 10,//espaço entre linhas
          spacing: 10,//espaçoentre colunas
          children: [
          Container(
            width: largura,
            height: altura,
            color: Colors.orange,
          ),
           Container(
            width: largura,
            height: altura,
            color: Colors.green,
          ),
           Container(
            width: largura,
            height: altura,
            color: Colors.purple,
          ),
           Container(
            width: largura,
            height: altura,
            color: Colors.black,
          ),
           Container(
            width: largura,
            height: altura,
            color: Colors.yellow,
          )
        ],),
      ),

    );
  }
}