import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/drawer.dart';
import 'package:kkgmart/src/order_details.dart';


class Order extends StatefulWidget {
  const Order({super.key});
  @override
  State<Order> createState() => _OrderState();
}
class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.whitecolor,
        body: Column(
          children: [
            Card(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)))
            ,  color: AppColor.whitecolor,
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                 color: AppColor.whitecolor,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text("Order Placed on : "),
                          const Text("1st Jan 2022"),
                          const Expanded(child: SizedBox()),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OrderDetails()));
                              },
                              child: const Text(
                                "Order Details",
                                style:
                                    TextStyle(fontSize: 14, color: AppColor.redcolor),
                              ))
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Order Id : "),
                          Text(
                            "68723648684",
                            style: TextStyle(fontSize: 14, color:AppColor.graycolor),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.delivery_dining),
                          Text(
                            "  Delivered on 05 jan, 2022",
                            style: TextStyle(fontSize: 14, color: AppColor.greencolor),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            
                            child: Image.asset("images/assets/watch2.png")),
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
                  ],
                ),
              ),
            ),
             Card(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)))
            ,  color: AppColor.whitecolor,
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                 color: AppColor.whitecolor,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text("Order Placed on : "),
                          const Text("1st Jan 2022"),
                          const Expanded(child: SizedBox()),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OrderDetails()));
                              },
                              child: const Text(
                                "Order Details",
                              style:
                                    TextStyle(fontSize: 14, color: AppColor.redcolor),
                              ))
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Order Id : "),
                          Text(
                            "68723648684",
                            style: TextStyle(fontSize: 14, color:AppColor.graycolor),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.delivery_dining),
                          Text(
                            "  Delivered on 05 jan, 2022",
                            style: TextStyle(fontSize: 14, color: AppColor.greencolor),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,                            
                            child: Image.asset("images/assets/15.png")),
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
                  ],
                ),
              ),
            )
          ],
        ),
        drawer: const Drawers());
  }
}
