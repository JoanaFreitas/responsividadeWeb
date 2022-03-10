import 'package:flutter/material.dart';

class RowColumnResponsividade extends StatelessWidget {
  const RowColumnResponsividade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    var alturaBody = altura - alturaBarraStatus - alturaAppBar;

    return Scaffold(
        appBar: AppBar(
          title: Text('Row & Column: resposividade'),
        ),
        body: Column(
          children: [
            //      Container(
            //   color: Colors.blue,
            //   height: alturaBody*0.3,
            // ),
            // Container(
            //   color: Colors.red,
            //   height: alturaBody*0.5,
            // ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.yellow),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ));
  }
}
