import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';
import 'package:kkgmart/src/product_details.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Listview> {
  final List<String> imagee = [
    "images/assets/9.png",
    "images/assets/7.png",
    "images/assets/3.png",
    "images/assets/4.png",
    "images/assets/9.png",
    "images/assets/6.png",
    "images/assets/7.png",
    "images/assets/3.png",
    "images/assets/9.png",
  ];

  final List<String> items = [
    'Short text',
    'This is a longer text that will make the container taller.',
    'Another short one',
    'This one is also long and will increase the container height.',
    'Short',
    'Long text can cause the container to expand vertically.',
    'Short text',
    'Long text can cause the container to expand vertically.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.whitegray,
          centerTitle: true,
       title:  const Text("Perticular Product",style: TextStyle(color: Colors.black),),
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
            DynamicHeightGridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              builder: (ctx, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductDetails("1")));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.whitecolor,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                child: Image.asset(
                                  imagee[index],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Apple/Iphone30',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      softWrap: false,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'The Ultimate IPhone',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                      softWrap: false,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Apple/Iphone30-m-pro-5GB-2000-mega_pixels',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      softWrap: false,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '₹25000',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      softWrap: false,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ]),
        ));
  }
}
