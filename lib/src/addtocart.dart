import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/controller%20.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final List<String> imagee2 = [
    "images/assets/product2.png",
    "images/assets/product3.png",
    "images/assets/product4.png",
  ];
  MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.whitegray,
        centerTitle: true,
    title: const Text("Add to cart"),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,color:AppColor.blackcolor)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                  child: Container(
                color: AppColor.whitecolor,
                width: double.infinity,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.countertops_outlined),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Apply Coupon",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    )
                  ],
                ),
              )),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: imagee2.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Card(
                       
                      elevation: 3,
                      child: Container(
                         color: AppColor.whitecolor,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Crafts of India to Basket",
                                      style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "₹1,214.00",
                                      style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 120,
                                        width: 100,
                                        child: Image.asset(imagee2[index])),
                                  ],
                                ),
                                const Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                          "Sweet Corn 1 pc (Approx 2000 rupees Sweet Corn 1 pc (Approx 2000 rupees  /)"),
                                    
                                    SizedBox(height: 10,),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "₹1200.00",
                                          style: TextStyle(
                                              color: AppColor.blackcolor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Save for Later"),
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
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Payment Details",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("MRP Totel",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.graycolor,
                      )),
                  Text("₹64,767.00",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Product Disacount",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.graycolor,
                      )),
                  Text("₹64,767.00",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greencolor)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Promotional Discount",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.graycolor)),
                  Text("₹64,767.00",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greencolor)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Free",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.graycolor)),
                  Text("Free ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Totel",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.graycolor,
                      )),
                  Text("134,435.00 ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Explore more"),
                    Text(
                      "₹278,765.28",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddToCart()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.bluecolor,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Place Order",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.whitecolor),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
