import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/category.dart';
import 'package:kkgmart/src/listview.dart';
import 'package:kkgmart/src/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  final ScrollController _scrollBottomBarController = ScrollController();
  bool isScrollingDown = false;
  double bottomBarHeight = 75;

  final pages = [
    const Home(),
    const Cateory(),
    const Profile(),
  ];

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
    setState(() {});
  }

  void hideBottomBar() {
    setState(() {});
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

  final List<String> imgList = [
    "images/assets/banner1.png",
    "images/assets/banner2.png",
    "images/assets/banner3.png",
  ];
  final List<String> imagee = [
    "images/assets/list1.png",
    "images/assets/list2.png",
    "images/assets/list3.png",
    "images/assets/list4.png",
    "images/assets/list1.png",
    "images/assets/list2.png",
    "images/assets/list3.png",
    "images/assets/list4.png",
    "images/assets/list1.png",
    "images/assets/list2.png",
    "images/assets/list3.png",
    "images/assets/list4.png",
  ];

  final List<String> imagee2 = [
    "images/assets/6.png",
    "images/assets/7.png",
    "images/assets/9.png",
    "images/assets/14.png",
    "images/assets/11.png",
    "images/assets/12.png",
    "images/assets/13.png",
    "images/assets/14.png",
  ];

  final List<String> myProduct = [
    "images/assets/15.png",
    "images/assets/16.png",
    "images/assets/17.png",
    "images/assets/3.png",
    "images/assets/4.png",
    "images/assets/6.png",
  ];
  final List<String> myProduct3 = [
    "images/assets/15.png",
    "images/assets/16.png",
    "images/assets/17.png",
    "images/assets/3.png",
    "images/assets/4.png",
    "images/assets/6.png",
    "images/assets/3.png",
    "images/assets/4.png",
    "images/assets/6.png",
    "images/assets/3.png",
  ];



final List<String>  data = [

"chairs",
"chairs",
"chairs",
"chairs",
"chairs",
"chairs",


];
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 198,
              width: double.infinity,
              child: ClipRRect(
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                ),
              ),
            ))
        .toList();
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollBottomBarController,
        child: Column(
          children: <Widget>[
            Container(
              color: AppColor.whitecolor,
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    const Divider(color: AppColor.blackcolor),
                itemCount: imagee.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Listview()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          child: Image.asset(imagee[index]),
                        ),
                      ),
                      Text("Index $index")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                      autoPlay: true,
                      height: 134,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {});
                      }),
                ),
              ),
            ),
            Stack(children: [
              Container(
                height: 160,
                color: const Color.fromARGB(255, 255, 64, 115),
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    childAspectRatio: 0.90,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 1.0,
                  ),
                  itemCount: myProduct3.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          myProduct3[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            ]),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Recently Viewed Stores",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Divider(
                  color: AppColor.blackcolor,
                ),
                itemCount: imagee2.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset(
                          imagee2[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text("Furniture", style: TextStyle(fontSize: 12)),
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.only(left: 8),
                    //   child: Text("Furniture wallpaper",
                    //       style: TextStyle(fontSize: 12)),
                    // ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text(
                            "₹1180.00",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 10),
                          ),
                          Text("₹500.00", style: TextStyle(fontSize: 12)),
                         
                        ],
                      ),
                      
                    ),

                     const Padding(
                       padding: EdgeInsets.only(left: 8),
                       child: Text(
                              "85% OFF",
                              style: TextStyle(fontSize: 10, color: Colors.red),
                            ),
                     ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  "images/assets/banner2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "New year specials",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Stack(children: [
              Container(
                height: 280,
                color: const Color.fromARGB(255, 5, 99, 104),
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.90,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 1.0,
                  ),
                  itemCount: myProduct.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          myProduct[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  })
            ]),


 SizedBox(
              height: 220,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Divider(
                  color: AppColor.blackcolor,
                ),
                itemCount: imagee2.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset(
                          imagee2[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text("Furniture", style: TextStyle(fontSize: 12)),
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.only(left: 8),
                    //   child: Text("Furniture wallpaper",
                    //       style: TextStyle(fontSize: 12)),
                    // ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text(
                            "₹1180.00",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 10),
                          ),
                          Text("₹500.00", style: TextStyle(fontSize: 12)),
                        
                        ],
                      ),
                    ),

                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                              "85% OFF",
                              style: TextStyle(fontSize: 10, color: Colors.red),
                            ),
                      ),
                  ],
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: SizedBox(
                height: 180,
                width: double.infinity,
                child: Image.asset(
                  "images/assets/bannner.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
