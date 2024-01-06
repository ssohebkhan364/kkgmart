import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:AppColor.whitecolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.whitegray,
          centerTitle: true,
         title: 
          const Text("Delivery address",style: TextStyle(color: Colors.black),),
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
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10),
              child: Row(
                children: [
                  Text(
                    "Saved Address",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColor.blackcolor,),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColor.graycolor)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Soheb khan    ",
                            style: TextStyle(
                                color: AppColor.blackcolor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            color: AppColor.indigocolor,
                            height: 20,
                            width: 50,
                            child: const Center(
                                child: Text(
                              "Work",
                              style: TextStyle(color: Colors.white),
                            )),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                                  "A-19 near dream hotel sanganer thana jaipur, Jaipur, Rajasthan, 302011"))
                        ],
                      ),
                    ),
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delete",
                            style: TextStyle(
                              color: AppColor.graycolor
                            ),
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(
                              color:AppColor.redcolor
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: AppColor.graycolor,
                      )),
               
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Icon(Icons.add, color: AppColor.indigocolor)),
                      Text(
                        "Add New Address",
                        style: TextStyle(
                          color: AppColor.indigocolor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ))
                
                  ),
            )


          ],
        ));
  }
}
