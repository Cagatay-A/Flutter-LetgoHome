import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
//import 'package:dialogs/dialogs.dart';

import '../deneme.dart';
//import '../ilan1.dart';
//import '../stepper.dart';
//import '../addproduct.dart';
//import '../modaldialog.dart';
import '../core/viewmodel/checkout_viewmodel.dart';
import '../core/viewmodel/home_viewmodel.dart';
import 'category_products_view.dart';
import 'product_detail_view.dart';
import 'search_view.dart';
import 'widgets/custom_text.dart';
import '../../constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/services.dart';

class HomeView extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    Get.put(CheckoutViewModel());
      
     void _addProduct() {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => DenemeScreen()));
     //Navigator.push(context, PageTransition(type: PageTransitionType.size, alignment: Alignment.bottomCenter, child: DenemeScreen()));

               /* Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRightWithFade,
                    alignment: Alignment.topCenter,
                    child: DenemeScreen(),
                    
                    //StepperScreen(),
                    //AddProductScreen(),
                    //ModalDialogScreen(),
                  ),
                );*/

Navigator.push(
      context,
      PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation animation,
              Animation secondaryAnimation) {
            return DenemeScreen();
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

double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(


      
    /*  appBar: AppBar(
        systemOverlayStyle: overlayStyle, // 2
      ),*/
      body: GetBuilder<HomeViewModel>(
        init: Get.find<HomeViewModel>(),
        builder: (controller) => controller.loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                padding: EdgeInsets.only(
                    top: 15.h, bottom: 14.h, right: 16.w, left: 16.w),
                child: Column(
                  children: [
                     Row(
                            children: <Widget>[
                    Padding(padding: EdgeInsets.only(right:50),),                   
                    Container(
                      width: screenWidth * 0.57,
                      height: 53.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,//search back color
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ara",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black, //search icon color
                          ),
                        ),
                        onFieldSubmitted: (value) {
                          Get.to(SearchView(value));
                        },
                      ),
                    ),
                              Padding(padding: EdgeInsets.only(right: 10.0),),
                         CustomText(
                          text: 'Filtrele',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade600,
                        ),

                            ],
                          ),



                    SizedBox(
                      height: 20.h,
                    ),
                   /* CustomText(
                      text: 'Kategoriler',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),*/
                    SizedBox(
                      height: 19.h,
                    ),
                    ListViewCategories(),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Vitrin İlanlar',
                          fontSize: 31,
                          fontWeight: FontWeight.bold,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(CategoryProductsView(
                              categoryName: 'Best Selling',
                              products: controller.products,
                            ));
                          },
                          child: CustomText(
                            text: 'Hepsini gör ➜',
                            fontSize: 18.5,
                            fontWeight:FontWeight.bold,
                            color:Colors.red.shade600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListViewProducts(),
                  ],
                ),
              ),
      ),
      




      //loatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _addProduct,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.



    );
  }
}

class ListViewCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => Container(
        height: 90.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(CategoryProductsView(
                  categoryName: controller.categories[index].name,
                  products: controller.products
                      .where((product) =>
                          product.category ==
                          controller.categories[index].name.toLowerCase())
                      .toList(),
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(50.r),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: Colors.white,
                      ),
                      height: 73.h,
                      width: 63.w,
                      child: Padding(
                        padding: EdgeInsets.all(15.h),// cat. icon büyüklüyü
                        child: Image.network(
                          controller.categories[index].image,
                        ),
                      ),
                    ),
                  ),
                  CustomText(
                    text: controller.categories[index].name,
                    fontSize: 13,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20.w,
            );
          },
        ),
      ),
    );
  }
}

class ListViewProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return GetBuilder<HomeViewModel>(
      builder: (controller) => Container(
        height: 320.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(
                  ProductDetailView(controller.products[index]),
                );
              },
              child: Container(
                width: 130.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                      Container(
                        width: 110.0,
                        height: 110.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9.0)),
                          color: Colors.redAccent,
                        ),
                        child: Image.network(
                          controller.products[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),

                   /* Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: Colors.white,
                      ),
                      height: 130.h,
                      width: 130.w,
                      child: Image.network(
                        controller.products[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
*/                  /*
                    CustomText(
                      text: controller.products[index].name,
                      fontSize: 16,
                    ),
                    CustomText(
                      text: controller.products[index].description,
                      fontSize: 12,
                      color: Colors.grey,
                      maxLines: 1,
                    ),
                    CustomText(
                      text: '\$${controller.products[index].price}',
                      fontSize: 16,
                      color: primaryColor,
                    ),*/
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 1.w,
            );
          },
        ),
      ),
    );
  }
}
