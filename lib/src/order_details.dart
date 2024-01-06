import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.whitecolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.whitegray,
        
          titleSpacing: 0,
          title: 
          
          
       const Text("Order Details",style: TextStyle(color: Colors.black),),
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
          child: Column(
            children: [
              Card(
                child: Container(
                  color: AppColor.whitecolor,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [Text("Order placed on: 01 Jan 2022")],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [Text("Order ID: "), Text("117154866")],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  color: AppColor.whitecolor,
                  child: Column(
                    children: [
                       const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.delivery_dining),
                            Text(
                              "  Delivered on 05 jan, 2022",
                              style:
                                  TextStyle(fontSize: 14, color: AppColor.greencolor),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 70,
                                width: 70,
                                child: Image.asset("images/assets/15.png")),
                            ),
                            const Expanded(
                              child: Text(
                                "boAt Airdopes 138 T TWS Earbuds with Sleek Design, IWP, Type C Port (Active Black)₹949.0",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Sold by : KK G MART",
                              style:
                                  TextStyle(fontSize: 14, color: AppColor.graycolor),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Delivery Mode : ",
                              style:
                                  TextStyle(fontSize: 14, color: AppColor.blackcolor,),
                            ),
                            Text(
                              "Standered Delivery",
                              style:
                                  TextStyle(fontSize: 14, color: AppColor.graycolor),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Track Order",
                              style:
                                  TextStyle(fontSize: 14, color: AppColor.blackcolor),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                const Icon(
                                  Icons.check_circle_rounded,
                                  color: AppColor.greencolor
                                ),
                                Container(
                                    height: 20, width: 1, color: AppColor.greencolor)
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Order Confiremed",
                                    style: TextStyle(
                                        fontSize: 14, color: AppColor.blackcolor),
                                  ),
                                  Text(
                                    "07:55 PM | 01 jan , 2022",
                                    style: TextStyle(color:AppColor.graycolor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                const Icon(
                                  Icons.check_circle_rounded,
                                  color: AppColor.greencolor,
                                ),
                                Container(
                                    height: 20, width: 1, color: AppColor.greencolor)
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shipped",
                                    style: TextStyle(
                                        fontSize: 14, color: AppColor.blackcolor),
                                  ),
                                  Text(
                                    "07:55 PM | 01 jan , 2022",
                                    style: TextStyle(color: AppColor.graycolor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                const Icon(
                                  Icons.check_circle_rounded,
                                  color: AppColor.greencolor
                                ),
                                Container(
                                    height: 20, width: 1, color: AppColor.greencolor)
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Out For Delivery",
                                    style: TextStyle(
                                        fontSize: 14, color: AppColor.blackcolor),
                                  ),
                                  Text(
                                    "07:55 PM | 01 jan , 2022",
                                    style: TextStyle(color: AppColor.graycolor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          color: AppColor.whitegray,
                          child: const Row(
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.check_circle_rounded,
                                    color: AppColor.greencolor
                                  ),

                               
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "On Delivered",
                                      style: TextStyle(
                                          fontSize: 14, color: AppColor.blackcolor),
                                    ),
                                    Text(
                                      "07:55 PM | 01 jan , 2022",
                                      style: TextStyle(color: AppColor.graycolor),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.delivery_dining),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                  child: Container(
                color: AppColor.whitecolor,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Product Details",
                            style: TextStyle(fontSize: 14, color: AppColor.blackcolor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub Totel",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                          Text(
                            "₹ 2974.00",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping & Processing Fee",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                          Text(
                            "₹ 49.0",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Discount",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                          Text(
                            "-₹ 2041",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Coupon",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                          Text(
                            "-₹ 0.00",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Convenience Charges",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                          Text(
                            "₹ 0.0",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cliq Cash Applied",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                          Text(
                            "-₹0.0",
                            style: TextStyle(color: AppColor.graycolor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                                color: AppColor.blackcolor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "₹ 998",
                            style: TextStyle(
                                color: AppColor.blackcolor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Payment Mode: ",
                            style: TextStyle(
                                color: AppColor.blackcolor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("COD")
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Delivery Address",
                            style: TextStyle(
                                color: AppColor.blackcolor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 200,
                              child: Expanded(
                                  child: Text(
                                      "A-19 near dream hotel sanganer thana jaipur, Jaipur, Rajasthan, 302011")))
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
