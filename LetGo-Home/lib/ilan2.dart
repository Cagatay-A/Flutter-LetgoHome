import 'package:flutter/material.dart';
import 'package:shopzler/view/widgets/custom_text.dart';



class Ilan2Screen extends StatefulWidget {
  @override
  _Ilan2State createState() => _Ilan2State();
}

class _Ilan2State extends State<Ilan2Screen> {
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:Container(          
              child: Text("Ürün Görseli Ekleyin", style: TextStyle(
              height: -9.0,
              fontSize: 35.0,
              fontWeight: FontWeight.bold,

              color: Colors.black,

                )),
                ),
                ),
    );
  }
}