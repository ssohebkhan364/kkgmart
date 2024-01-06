import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/homepage.dart';
import 'package:kkgmart/src/delivery_address.dart';
import 'package:kkgmart/src/mylist.dart';
import 'package:kkgmart/src/wishlist.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedindex = 0;
  bool isScrollingDown = false;
  double bottomBarHeight = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whitecolor,
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundColor: AppColor.graycolor,
                    child: Icon(Icons.person, color: AppColor.bluecolor),
                  ),
                ),
              ),
         
          Column(
            children: [
              Text(
                "Soheb Khna ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
                            Text(
                "9785214795 ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),


             ],
          ),


          const Divider(),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage(4)));
            },
            child: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Icon(Icons.book_online, color: AppColor.bluecolor),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: InkWell(
                        child: SizedBox(
                          height: 42,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "My Orders",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios_rounded, size: 20),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage(2)));
            },
            child: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Icon(Icons.notifications, color: AppColor.bluecolor),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: InkWell(
                        child: SizedBox(
                          height: 42,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "My Notifictions",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios_rounded, size: 20),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyList()));
            },
            child: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Icon(Icons.library_add_check_sharp,
                        color: AppColor.bluecolor),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: InkWell(
                        child: SizedBox(
                          height: 42,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Mylist",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios_rounded, size: 20),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WishList()));
            },
            child: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Icon(Icons.favorite, color: AppColor.bluecolor),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: InkWell(
                        child: SizedBox(
                          height: 42,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Wishlist",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Address()));
            },
            child: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Icon(Icons.location_on, color: AppColor.bluecolor),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: InkWell(
                        child: SizedBox(
                          height: 42,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Delivery Addresss",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios_rounded, size: 20),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
