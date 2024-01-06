import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';

class About extends StatefulWidget {
  const About({super.key});
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,          backgroundColor: AppColor.whitegray,
          centerTitle: true,
        
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios,color:AppColor.blackcolor),),
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
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "About KK G MART",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "India’s Favorite Online Shopping Platform",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "About KK G MART India’s Favorite Online Shopping PlatformAt JioMart, our goal is to make shopping easier, faster, and more convenient than ever before for our customers. We are committed in our mission to build a trustworthy online marketplace which offers the widest range of products across the country. With our proven user experience and reliable services, we are committed to provide customers in India with a trusted and hassle-free one-stop-shop for all their shopping needs across various categories such as Electronics, Grocery, Fashion, Home & Kitchen, etc.For over 17 years of operations with Reliance Retail, we have built most reliable retail presence that caters to the unique needs of customers in India, and we are committed to bring a similar experience online with JioMart. Our vast exceptional selection of products make our online portal the preferred shopping destination for all kinds of customers.With our convenient payment options, on time delivery services, dependable customer service, and secure online transactions, you can now shop smarter, faster and more seamlessly within a few clicks. Our commitment to excellence has been recognized worldwide, and we look forward to offering our customers a delightful shopping experience online with JioMart. #Happy Shopping with JioMart."),
              )
            ],
          ),
        ));
  }
}
