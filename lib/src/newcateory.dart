import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/perticular_product.dart';
import 'package:kkgmart/src/product.dart';

class NewCateory extends StatefulWidget {
  final selectcat;
  const NewCateory(
    this.selectcat, {
    super.key,
  });
  @override
  State<NewCateory> createState() => _NewCateoryState();
}
class _NewCateoryState extends State<NewCateory> {
  final List<String> myProducts = [
   "images/assets/20.png",
      "images/assets/21.png",
         "images/assets/22.png",
            "images/assets/23.png",
               "images/assets/24.png",
                  "images/assets/25.png",
                     "images/assets/26.png",
                        "images/assets/27.png",
                       

  ];

  List<String> name = [
    "Popular Stores",
    "Recently Viewed Stores",
    "Trending Stores",
    "More on KK Gmart",
  ];

  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColor.whitecolor, AppColor.purplecolor],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Fashion",
                    style: TextStyle(fontSize: 20, color: AppColor.indigocolor),
                  ),
                  Text(widget.selectcat)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name[index].toString(),
                            style: const TextStyle(
                                color: AppColor.blackcolor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyWidget()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColor.indigocolor),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.whitecolor,
                                  size: 10,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    DynamicHeightGridView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: myProducts.length,
                        crossAxisCount: 3,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 2,
                        builder: (ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Product()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    // alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: AppColor.whitegray,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child:
                                    // Text("")
                                     Container(
                                        decoration: BoxDecoration(
                                     
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                       child: Image.asset(
                                        myProducts[index],
                                        // height: 50,
                                        // width: 40,
                                        fit: BoxFit.cover,
                                                                         ),
                                     ),
                                  ),
                                  const Text("Fashion")
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                );
              }),
        ),
      ]),
    );
  }
}
