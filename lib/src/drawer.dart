import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/about.dart';
import 'package:kkgmart/src/homepage.dart';
import 'package:kkgmart/src/contact.dart';
import 'package:kkgmart/src/delivery_address.dart';
import 'package:kkgmart/src/help&suport.dart';
import 'package:kkgmart/src/mylist.dart';
import 'package:kkgmart/src/wishlist.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  
  var dataa;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:AppColor.whitecolor,
      child: Column(
      
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.whitegray,
            ),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
              color: AppColor.whitegray,
              ),
              accountName: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Soeb kkan",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              accountEmail: Text(
                "khan@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 30.0, color: AppColor.whitecolor,),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage(0)));
              },
              child: const Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Home"),
                ],
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  ' My Account ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage(4)));
              },
              child: const Row(
                children: [
                  Icon(Icons.book),
                  SizedBox(
                    width: 12,
                  ),
                  Text("My Orders"),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage(2)));
              },
              child: const Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(
                    width: 12,
                  ),
                  Text("My Notification"),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyList()));
              },
              child: const Row(
                children: [
                  Icon(Icons.library_add_check_sharp),
                  SizedBox(
                    width: 12,
                  ),
                  Text("My list"),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WishList()));
              },
              child: const Row(
                children: [
                  Icon(Icons.favorite),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Wishlist"),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Address()));
              },
              child: const Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Delivery Address"),
                ],
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  'Help & Support ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HelpSupport()));
              },
              child: const Row(
                children: [
                  Icon(Icons.help),
                  SizedBox(
                    width: 12,
                  ),
                  Text("FAQ/Need Help"),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const About()));
              },
              child: const Row(
                children: [
                  Icon(Icons.details),
                  SizedBox(
                    width: 12,
                  ),
                  Text("About Us"),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Contact()));
              },
              child: const Row(
                children: [
                  Icon(Icons.phone_in_talk_rounded),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Contact US"),
                ],
              ),
            ),
          ),
          const Divider(),
          Expanded(child: Container()),
     Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Contact()));
              },
              child: const Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Logout"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}
