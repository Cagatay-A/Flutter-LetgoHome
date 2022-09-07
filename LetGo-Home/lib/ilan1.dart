//import 'dart:html';
//import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shopzler/view/widgets/custom_text.dart';
//import 'package:get/get.dart';
//import 'package:shopzler/view/widgets/custom_text.dart';
import '../ilan2.dart';


class Ilan1Screen extends StatefulWidget {
  @override
  _Ilan1State createState() => _Ilan1State();
}

class _Ilan1State extends State<Ilan1Screen> {
 
   final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();



  @override
   Widget build(BuildContext context) {


void _pushpage(){
Navigator.push(
      context,
      PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation animation,
              Animation secondaryAnimation) {
            return Ilan2Screen();
          },
          opaque: true,
          barrierColor: Colors.grey,
          transitionDuration: Duration(milliseconds: 400),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            );
          }));

}


    return MaterialApp(
      home: Scaffold(
        body: Center(

  



          child: Container(          
             
    /*         child: CustomText(
                  text: 'Bir Kategori Seçin',
                            fontSize: 60,
                            fontWeight:FontWeight.bold,
                            color:Colors.red
                ),
*/

            // height: 200,
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              
              children: [

                Card(

                shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      
                      color: Colors.teal,
                      child: Icon(
                                  Icons.electrical_services,
                                  size: 30,
                                  color: Colors.amber,

                                ),
                                
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),

                Card(
                            
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.gamepad_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


                Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.home_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),

   Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.car_rental_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


   Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.keyboard_control_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


   Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.pie_chart_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),

   Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.place_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


   Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.sports_bar_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


   Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.pregnant_woman_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


 Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.person_add_alt_1_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


                 Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.movie_creation_outlined,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


                 Card(
                             shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                ),     
                  child: new InkWell(
                    onTap: () {
                      _pushpage();
                    },
                    
                    child: Container(
                      color: Colors.teal,
                      child: Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Colors.amber,
                                  
                                ),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),


                
              ],
            ),
          ),
          
        ),
      ),
    );
  }
  }