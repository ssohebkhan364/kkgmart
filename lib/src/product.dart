import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';
import 'package:kkgmart/src/controller%20.dart';
import 'package:kkgmart/src/product_details.dart';
import 'package:like_button/like_button.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isSelected = false;
  Color borderColor = Colors.transparent;

  int iindex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> imagee = [
    "images/assets/image 84.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 84.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 84.png",
    "images/assets/image 55.png",
  ];
  final List<String> imagee2 = [
    "images/assets/image 84.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 84.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 84.png",
    "images/assets/image 55.png",
  ];
  List<String> name = [
    "Sort",
    "Filter",
    "Discount",
    "Price",
    "Size",
  ];
  MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor:  AppColor.whitecolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor:  AppColor.whitegray,
          centerTitle: true,
       
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
          
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 48,
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    fillColor: AppColor.whitegray,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Search"),
              ),
            ),
          ),
          Container(
            color: AppColor.whitecolor,
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Divider(
                color: AppColor.graycolor,
              ),
              itemCount: name.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return const SafeArea(
                                child: Wrap(
                                  children: [
                                    ListTile(title: Text('Foo')),
                                    ListTile(title: Text('Bar')),
                                    ListTile(title: Text('Foo')),
                                    ListTile(title: Text('Bar')),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColor.graycolor)),
                          child: Center(child: Text(name[index].toString())),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: AppColor.whitecolor,
            height: 60,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Divider(
                color:  AppColor.graycolor
              ),
              itemCount: imagee.length,
              itemBuilder: (context, index) => Column(
                children: [
                  InkWell(
                    onTap: () {
                      iindex = index;
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: AppColor.whitecolor,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.graycolor),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        height: 50,
                        width: 168,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Image.asset(
                              imagee[index],
                              height: 40,
                              width: 40,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text(
                                "New Design",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ]),
                        ),
                
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
           const Divider(),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: imagee2.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductDetails("data")));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Stack(alignment: Alignment.topRight, children: [
                                  SizedBox(
                                      height: 120,
                                      width: 100,
                                      child: Image.asset(imagee2[index])),
                                  const LikeButton(
                                    size: 20,
                                  ),
                                ]),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                      "Sweet Corn 1 pc (Approx 2000 rupees Sweet Corn 1 pc (Approx 2000 rupees/)"),
                                
                                const SizedBox(height: 10,),
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "₹1200.00",
                                      style: TextStyle(
                                          color:  AppColor.blackcolor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                              
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                      
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
                                  ),
      ],
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
        ])));
  }
}
