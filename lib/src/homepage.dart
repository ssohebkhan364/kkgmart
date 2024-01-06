

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';
import 'package:kkgmart/src/category.dart';
import 'package:kkgmart/src/drawer.dart';
import 'package:kkgmart/src/home.dart';
import 'package:kkgmart/src/notification.dart';
import 'package:kkgmart/src/order.dart';
import 'package:kkgmart/src/profile.dart';

class HomePage extends StatefulWidget {
  final data;
  const HomePage(
    this.data, {
    super.key,
  });
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool isScrollingDown = false;
  double bottomBarHeight = 75;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollBottomBarController = ScrollController();

  final List<Widget> _pages = <Widget>[
    const Home(),
    const Cateory(),
    const Notifictions(),
    const Profile(),
    const Order()
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      widget.data != null ? _currentIndex = widget.data : _currentIndex;
    });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColor.whitecolor,
        appBar: AppBar(
          titleSpacing: 0,
          elevation: 0,
          backgroundColor: AppColor.graycolor,
          centerTitle: true,
          title: _currentIndex == 4
              ? const Text("Orders")
              : Center(
                  child: SizedBox(
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
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
                          hintText: "Search",
                          contentPadding: const EdgeInsets.only(top: 5)),
                    ),
                  ),
                ),
          leading: InkWell(
              onTap: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Image.asset("images/assets/Vector.png")),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddToCart()));
                  },
                  child: const Icon(Icons.shopping_cart_outlined,
                      color: AppColor.blackcolor)),
            ),
          ],
        ),
        body: PopScope(
          canPop: true,
          onPopInvoked: (didPop) {
            if (_currentIndex != 0) {
              setState(() {
                _currentIndex = 0;
              });
            }
          },
          child: SafeArea(
            top: false,
            child: IndexedStack(
              index: _currentIndex,
              children: _pages,
            ),
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        drawer: const Drawers());
  }

  Widget get bottomNavigationBar {
    return BottomNavigationBar(
      backgroundColor: AppColor.graycolor,
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      fixedColor: AppColor.blackcolor,
      selectedLabelStyle: const TextStyle(color: AppColor.whitecolor),
      unselectedLabelStyle: const TextStyle(color: AppColor.whitecolor),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Categorys',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_online_outlined),
          label: 'Orders',
        ),
      ],
    );
  }
}
