import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';
import 'package:kkgmart/src/category.dart';
import 'package:kkgmart/src/controller%20.dart';
import 'package:like_button/like_button.dart';
import 'package:five_pointed_star/five_pointed_star.dart';

class ProductDetails extends StatefulWidget {
 
  final data;
  const ProductDetails(this.data, {super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int mycount = 0;
  final List<String> imagee2 = [
    "images/assets/watch.png",
    "images/assets/product2.png",
    "images/assets/product3.png",
    "images/assets/product4.png",
    "images/assets/watch.png",
    "images/assets/product2.png",
    "images/assets/product3.png",
    "images/assets/product4.png",
    "images/assets/product2.png",
    "images/assets/product3.png",
    "images/assets/product4.png",
    "images/assets/watch.png",
    "images/assets/product2.png",
  ];

  int selectedindex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final ScrollController _scrollBottomBarController = ScrollController();
  bool isScrollingDown = false;
  bool _show = true;
  double bottomBarHeight = 75;
   MyController c = Get.put(MyController());
  @override
  void initState() {
    super.initState();
    myScroll();
  }

  @override
  void dispose() {
    _scrollBottomBarController.removeListener(() {});
    super.dispose();
  }

  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
    _scrollBottomBarController.addListener(() {
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          hideBottomBar();
        }
      }
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          showBottomBar();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whitecolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.whitegray,
        centerTitle: true,
        title:  const Text("Product Details"),
      
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
          controller: _scrollBottomBarController,
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [Text("Premium Fruits")],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [Text("Banana Mrl Pack 5pcs(Approx 600 g-700 g)")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FivePointedStar(
                    size: const Size(12, 12),
                    onChange: (count) {
                      setState(() {
                        mycount = count;
                      });
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        LikeButton(
                          size: 20,
                        ),
                        Icon(
                          Icons.share,
                          size: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.whitecolor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/assets/3.png",
                        height: 300,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                color: AppColor.whitecolor,
                child: Column(children: [
                  const Row(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("M.R.P:"),
                      ),
                    ),
                    Text(
                      "₹45.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("(₹9.00/1 count)"),
                    Text("Incl.ofall taxes"),
                  ]),

                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Sold By"),
                      ),
                    ]),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Delivery Between 11th Sep ti 13th Sep"),
                      ),
                    ]),
                  ),
                  const Divider(),

                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Text(
                          "Offers(12)",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.comment_bank),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Additonal Offers"),
                            Row(
                              children: [
                                Text("Flat Rs.100 on a Grpcery Cart Value"),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                )
                              ],
                            ),
                            Text("2 Offers Available"),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.comment_bank),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Additonal Offers"),
                            Row(
                              children: [
                                Text("Flat Rs.100 on a Grpcery Cart Value"),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                )
                              ],
                            ),
                            Text("2 Offers Available"),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.comment_bank),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Additonal Offers"),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text("Flat Rs.100 on a Grpcery Cart Value"),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 16,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Text("2 Offers Available"),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliver to ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text("400020"),
                            Text("Mumbai"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("in Stock I"),
                            Text("Delivery Between 11t Sep to 13t Sep"),
                          ],
                        )
                      ],
                    ),
                  ),

                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Sold by  ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text("Relliance Retail "),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Divider(),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Description ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                              "the banana may be aaaa simple truit but it's the banana may be aaaa simple truit but it's the banana may be aaaa simple truit but it's the banana may be aaaa simple truit but it's the banana may be aaaa simple truit but it's the banana may be aaaa simple truit but it's the banana may be aaaa simple truit but it's  "),
                        ),
                      ],
                    ),
                  ),

                  const Divider(),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Product information ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Text("GENERAL INFORMATION "),
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        SizedBox(width: 100, child: Text("Brand")),
                        Text("Premium Fruits"),
                      ],
                    ),
                  ),
               
               
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [Text("Article ID:   "), Text("782368746")],
                    ),
                  ),
                  const Divider(),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Frequently Bought Together ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: const Color(0xffe1e6e4),
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const Divider(
                        color: Colors.black,
                      ),
                      itemCount: imagee2.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Card(
                              elevation: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.whitecolor,
                                ),
                                height: 100,
                                width: 100,
                                child: Image.asset(imagee2[index]),
                              ),
                            ),
                            const Text("Sport "),
                            const Text("80.00 "),
                              Container(
                                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          padding: const EdgeInsets.all(2.0),
                                          child: InkWell(
                                              onTap: () {
                                                c.increment();
                                              },
                                              child: const Icon(Icons.add)),
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
                                          padding: const EdgeInsets.all(2.0),
                                          child: InkWell(
                                              onTap: () {
                                                c.decrement();
                                              },
                                              child: const Icon(Icons.remove)),
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
                  ),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Similar Product ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: const Color(0xffe1e6e4),
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const Divider(
                        color: Colors.black,
                      ),
                      itemCount: imagee2.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Card(
                              elevation: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.whitecolor,
                                ),
                                height: 100,
                                width: 100,
                                child: Image.asset(imagee2[index]),
                              ),
                            ),
                            const Text("Sport "),
                            const Text("80.00 "),
                               Container(
                                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          padding: const EdgeInsets.all(2.0),
                                          child: InkWell(
                                              onTap: () {
                                                c.increment();
                                              },
                                              child: const Icon(Icons.add)),
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
                                          padding: const EdgeInsets.all(2.0),
                                          child: InkWell(
                                              onTap: () {
                                                c.decrement();
                                              },
                                              child: const Icon(Icons.remove)),
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
                  ),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Ratins & Reviews ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Review this product ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text("Help others make an informed decision!"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            FivePointedStar(
                              size: const Size(24, 24),
                              onChange: (count) {
                                setState(() {
                                  mycount = count;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SafeArea(
                              child: Wrap(
                                children: [
                                  const ListTile(
                                      title: Text(
                                    'Rate & Review',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(
                                          "images/assets/watch.png",
                                          height: 60,
                                          width: 60,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const ListTile(
                                      title: Text('Rate this Product')),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FivePointedStar(
                                      size: const Size(24, 24),
                                      onChange: (count) {
                                        setState(() {
                                          mycount = count;
                                        });
                                      },
                                    ),
                                  ),
                                  const ListTile(
                                      title: Text('Add a headline ')),
                                  const ListTile(
                                      title: Text(
                                          'Please summarise your review in one line  ')),
                                  const Divider(),
                           
                                  const ListTile(
                                      title: Text('0/50 characters')),

                                  const ListTile(
                                      title: Text('Share your review  ')),

                                  Row(
                                    children: [
                                      Container(height: 52, color: Colors.blue),
                                      Container(height: 52, color: Colors.blue)
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                          height: 52,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                              child: Text("Write a review",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )))),
                    ),
                  )
                ]))
          ])),
      bottomNavigationBar: SizedBox(
        height: _show ? 0 : 80,
        width: MediaQuery.of(context).size.width,
        child: _show
            ? BottomNavigationBar(
                currentIndex: selectedindex,
                onTap: _onItemTapped,
                items: [
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cateory()));
                        },
                        child: const Icon(Icons.mail)),
                    label: "Category",
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                  )
                ],
              )
            : SizedBox(
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
                            Text("View Categories"),
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
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text("Add to Cart"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
