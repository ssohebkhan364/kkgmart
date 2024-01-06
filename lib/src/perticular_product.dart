import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isSelected = false;
  Color borderColor = Colors.transparent;
  int iindex = 0;
  final List<String> imagee = [
    "images/assets/image 84.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 84.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 84.png",
    "images/assets/image 55.png",
  ];
  final List<String> imagee2 = [
    "images/assets/image 84.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 84.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 55.png",
    "images/assets/image 86.png",
    "images/assets/grid3.png",
    "images/assets/image 84.png",
    "images/assets/image 55.png",
  ];
  List<String> name = [
    "Sort",
    "Filter",
    "Discount",
    "Price",
    "Size",
  ];


  final List<String> data = [
      "images/assets/6.png",
    "images/assets/7.png",
    "images/assets/9.png",
    "images/assets/14.png",
    "images/assets/11.png",
    "images/assets/12.png",
    "images/assets/13.png",
    "images/assets/14.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.whitecolor,
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
          Container(
            color: AppColor.whitecolor,
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Divider(
                color: AppColor.graycolor,
              ),
              itemCount: name.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return const SafeArea(
                                child: Wrap(
                                  children: [
                                    ListTile(title: Text('Foo')),
                                    ListTile(title: Text('Bar')),
                                    ListTile(title: Text('Foo')),
                                    ListTile(title: Text('Bar')),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColor.graycolor)),
                          child: Center(child: Text(name[index].toString(),style: const TextStyle(color: AppColor.blackcolor),)),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: AppColor.whitecolor,
            height: 60,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Divider(
                color: AppColor.graycolor,
              ),
              itemCount: imagee.length,
              itemBuilder: (context, index) => Column(
                children: [
                  InkWell(
                    onTap: () {
                      iindex = index;
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: AppColor.whitecolor,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.graycolor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 168,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Image.asset(
                              imagee[index],
                              height: 40,
                              width: 40,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text(
                                "New Design",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        
          GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 0.55,
              crossAxisCount: 2,
              children: List.generate(data.length, (index) {
                return GridTile(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: AppColor.graycolor, width: 0.5)),
                          child: Center(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 150,
                                      width: double.infinity,
                                      child: Image.asset(
                                        data[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'TITIRANGI 4 Pack 4WD Monster Truck Cars,Push and Go Toy',
                                            style: TextStyle(fontSize: 16),
                                            softWrap: false,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(left: 8, right: 8),
                                          child: Text(
                                            '87% off ',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppColor.greencolor,),
                                            softWrap: false,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(left: 8, right: 8),
                                          child: Text(
                                            '₹536',
                                            style: TextStyle(fontSize: 16),
                                            softWrap: false,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(left: 8, right: 8),
                                          child: Text(
                                            'Hot Deal ',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: AppColor.greencolor,),
                                            softWrap: false,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(children: [
                               
                                    Icon(
                                      Icons.star,
                                      color: AppColor.greencolor,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColor.greencolor,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColor.greencolor,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColor.greencolor,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColor.greencolor,
                                      size: 20,
                                    ),
                                  ]),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(children: [
                                      Text(
                                        'Free Delivery',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        softWrap: false,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ]),
                                  ),
                                ]),
                          )),
                    ));
              }))
        ])));
  }
}
