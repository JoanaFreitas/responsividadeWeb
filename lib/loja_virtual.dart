import 'package:flutter/material.dart';
import 'package:web_teste1/widget/item.produto.dart';
import 'package:web_teste1/widget/mobile_app_bar.dart';
import 'package:web_teste1/widget/web_app_bar.dart';

class LojaVirtual extends StatelessWidget {
  const LojaVirtual({Key? key}) : super(key: key);
   _ajustarVisualizacao(double larguraTela){
int colunas=2;
if(larguraTela<=600){
  colunas=2;
}else if(larguraTela<=960){
  colunas=4;
}else{
  colunas=6;
}
return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var largura = constraint.maxWidth;
        var alturaBarra= AppBar().preferredSize.height;
        return Scaffold(
          appBar: largura<600
          ? PreferredSize(
            child: MolibeAppBar(), 
            preferredSize: Size(largura, alturaBarra))
          :PreferredSize(
            child: WebAppBar(), 
            preferredSize: Size(largura, alturaBarra)),
            body:Padding(padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
ItemProduto('p1.jpg','notebook', '2.5555'),
ItemProduto('p2.jpg','notebook', '2.5555'),
ItemProduto('p3.jpg','notebook', '2.5555'),
ItemProduto('p4.jpg','notebook', '2.5555'),
ItemProduto('p5.jpg','notebook', '2.5555'),
ItemProduto('p6.jpg','notebook', '2.5555'),
              ],),
            ),
        );
      },
    );
  }
}
