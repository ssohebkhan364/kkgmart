import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0, 
        backgroundColor: AppColor.whitegray,
        centerTitle: true,
       
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
      body: const SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "CONTACT US",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "We are committed to provide you with the best possible support. Here's how you can get in touch with us:"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Level-1 Customer Support",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "WhatsApp us:  ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text("487236947397")
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Email at:  ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text("cs@jiomart.com")
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Call on:  ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text("1800 890 1222")
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("8:00 AM to 8:00 PM, 365 days"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Log a complaint: Click Here"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("See previously raised complaints: Click Here"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Concerns not addressed?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "It is our endeavour to respond and address your concerns on priority. Our team is continuously working to ensure best of our support. In case of any issue/concern of complex nature it may require additional time to resolve.In the event of any unlikely situation if your concerns are not addressed satisfactorily, you may communicate direct to our higher authorities.To facilitate easy access we have aligned following communication structure for the concerns not addressed satisfactorily:"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Level-2: Escalation",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "It is our endeavour to respond and address your concerns on priority. Our team is continuously working to ensure best of our support. In case of any issue/concern of complex nature it may require additional time to resolve.In the event of any unlikely situation if your concerns are not addressed satisfactorily, you may communicate direct to our higher authorities.To facilitate easy access we have aligned following communication structure for the concerns not addressed satisfactorily:"),
          ),
        ]),
      ),
    );
  }
}
