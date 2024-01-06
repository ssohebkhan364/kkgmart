

import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/newcateory.dart';

class Cateory extends StatefulWidget {
  const Cateory({super.key});

  @override
  State<Cateory> createState() => _CateoryState();
}

class _CateoryState extends State<Cateory> {
  var selectedcategory = 0;

 
  List<String> product = [
    "For you",
    "Fashion",
    "Application",
    "Mobile",
    "Electronics",
    "Home",
    "Furniture",
    "Toys & Baby",
    "Personal; Care",
    "Food & More",
    "Sports Hub",
    "Floight & Hotels",
    "Medicine",
    "Home Services",
  ];

  final List<String> myProducts = [
    "images/assets/20.png",
    "images/assets/21.png",
    "images/assets/22.png",
    "images/assets/23.png",
    "images/assets/24.png",
    "images/assets/25.png",
    "images/assets/26.png",
    "images/assets/27.png",
    "images/assets/22.png",
    "images/assets/23.png",
    "images/assets/24.png",
    "images/assets/25.png",
    "images/assets/26.png",
    "images/assets/27.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          height: double.infinity,
          width: 80,
          color: AppColor.whitegray,
          child: ListView.builder(
              itemCount: product.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedcategory = index;
                    });
                  },
                  child: Container(
                    color: selectedcategory == index
                        ? AppColor.whitecolor
                        : AppColor.whitegray,
                    height: 70,
                    child: Center(
                      child: SizedBox(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                myProducts[index],
                             
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              product[index].toString(),
                              style: const TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
        NewCateory(selectedcategory.toString())
      ],
    ));
  }
}
