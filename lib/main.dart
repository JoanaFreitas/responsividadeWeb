import 'package:flutter/material.dart';
import 'package:web_teste1/orientacao.dart';
import 'package:web_teste1/regras_layout.dart';
import 'package:web_teste1/responsividade_media_query.dart';
import 'package:web_teste1/rou_column_responsividade.dart';
import 'package:web_teste1/wrap_responsividade.dart';
import 'package:web_teste1/loja_virtual.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
     // home: ResposividadeMediaQuery()
     //home: RowColumnResponsividade(),
     //home: WrapResponsividade(),
     //home: Orientacao(),
     //home: RegrasLayout(),
     home: LojaVirtual(),
    );
  }
}

