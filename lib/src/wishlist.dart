import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';
import 'package:kkgmart/src/controller%20.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  final List<String> imagee = [
    "images/assets/watch.png",
    "images/assets/watch2.png",
    "images/assets/watch.png",
    "images/assets/watch2.png",
  ];
    MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.whitecolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.whitegray,
        centerTitle: true,
      title: 
          const Text("Wish List ",style: TextStyle(color: Colors.black),),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColor.blackcolor)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddToCart()));
                },
                child: const Icon(Icons.shopping_cart_outlined,color: AppColor.blackcolor)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Your favourited product",
                  style: TextStyle(color: AppColor.graycolor, fontSize: 16),
                ),
              ],
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: imagee.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                  
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                            height: 120,
                                            width: 100,
                                            child: Image.asset(imagee[index])),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.favorite_sharp,
                                      color: AppColor.redcolor,
                                    )
                                  ]),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                        "Titan 90110WL04 Mechnaical Analog Watch for Men"),
                                  ),
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "₹1200.00",
                                        style: TextStyle(
                                            color: AppColor.blackcolor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                               


    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
        children: [
        


          Card(
          shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
      ),
            elevation: 5,
            child: Container(
                decoration: BoxDecoration(
              color: AppColor.whitecolor,
          borderRadius: BorderRadius.circular(30)
            ),
          
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                    onTap: () {
                      c.decrement();
                    },
                    child: const Icon(Icons.remove)),
              ),
            ),
          ),


          Obx(() => c.books.toString() == "0"
              ? const SizedBox(  
                width: 30,child: Center(child: Text("Add")))
              : SizedBox(
            
                width: 30,
                child: Center(
                  child: Text(
                      c.books.toString(),
                      style: const TextStyle(
                          color:
                              AppColor.blackcolor),
                    ),
                ),
              )),



  Card(
        
          shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
      ),
            elevation: 5,
            child: Container(
                decoration: BoxDecoration(
              color: AppColor.whitecolor,
          borderRadius: BorderRadius.circular(30)
            ),
          
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                    onTap: () {
                      c.increment();
                    },
                    child: const Icon(Icons.add)),
              ),
            ),
          ),


        ],
      ),
    ),



                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider()
                    ],
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
