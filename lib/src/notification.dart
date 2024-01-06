import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/drawer.dart';

class Notifictions extends StatefulWidget {
  const Notifictions({super.key});
  @override
  State<Notifictions> createState() => _NotifictionsState();
}
class _NotifictionsState extends State<Notifictions>
    with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  final List<Widget> myTabs = [
     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
             color: AppColor.graycolor,
        child: const Padding(
           
          padding: EdgeInsets.only(left: 40,right: 40),
          child: Tab(
            text: 'All',
          ),
        ),
      ),
    ),
     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: AppColor.graycolor,
        child: const Padding(
            
          padding: EdgeInsets.only(left: 40,right: 40),
          child: Tab(
            child: Text( 'Offers',),
        
          ),
        ),
      ),
    ),
  ];
  late TabController _tabController;
  late ScrollController _scrollController;
  late bool fixedScroll;

  @override
  void initState() {
    _scrollController = ScrollController();
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
    Color tabColor = Colors.blue;

  List<String> name = [
    "  All ",
    "Offers",
   
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
           drawer: const Drawers(),
        key: _scaffoldKey,
        backgroundColor: Colors.white,
   
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              TabBar(
                
     
          dividerColor: Colors.white,
              indicatorPadding: const EdgeInsets.symmetric(vertical:1,horizontal: 5),
             indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(        
                color: const Color.fromARGB(255, 190, 219, 243),
                borderRadius: BorderRadius.circular(50),
              ),
              tabs: name.map<Widget>((tab) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
              
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Text(
                    tab,
                    style: const TextStyle(
                        color: Color(0xff03467d),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                );
              }).toList()),
              const SizedBox(height: 20,),
              const Expanded(
                child: TabBarView(children: [
             
                  MyTabOne(),
                  MyTabTwo(),
                ]),
              )
            ],
          ),
        ),
     ),
    );
  }
}

class MyTabOne extends StatelessWidget {
  const MyTabOne({super.key});

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
        length: 2,
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(

                elevation: 5,
                    color: Colors.white,
                child: Container(
                  decoration: const BoxDecoration(
                  
                    color: Colors.white,),
               
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.new_releases_outlined,
                              size: 20,
                            ),
                          ),
                      
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Handpicked For You , soheb",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
  ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Text(
                                    "we know this is something you'll like in tricles check 'em out!")),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "3 day ago",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                  
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}

class MyTabTwo extends StatelessWidget {
  const MyTabTwo({super.key});

  @override
  Widget build(BuildContext context) {
return DefaultTabController(
        length: 2,
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
              
                elevation: 5,
                    color: Colors.white,
                child: Container(
                  decoration: const BoxDecoration(
              
                      color: Colors.white,),
               
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.new_releases_outlined,
                              size: 20,
                            ),
                          ),
                      
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Handpicked For You , soheb",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
  ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Text(
                                    "we know this is something you'll like in tricles check 'em out!")),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "3 day ago",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
   
}
