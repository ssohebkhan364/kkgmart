
import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/addtocart.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport>
    with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  final List<Widget> myTabs = [
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Tab(
        text: 'Registration',
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Tab(
        text: 'Product',
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Tab(
        text: 'Ordering',
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Tab(
        text: 'Payment',
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Tab(
        text: 'Delivery',
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Tab(
        text: 'Delivery Fee',
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Tab(
        text: 'Loyalty Program',
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Tab(
        text: 'Login/Account Related',
      ),
    )
  ];
  late TabController _tabController;
  late ScrollController _scrollController;
  late bool fixedScroll;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _tabController = TabController(length: 8, vsync: this);
    _tabController.addListener(_smoothScrollToTop);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  _scrollListener() {
    if (fixedScroll) {
      _scrollController.jumpTo(0);
    }
  }

  _smoothScrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(microseconds: 300),
      curve: Curves.ease,
    );

    setState(() {
      fixedScroll = _tabController.index == 2;
    });
  }

  _buildTabContext(int lineCount) => ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: lineCount,
        itemBuilder: (BuildContext context, int index) {
          return const ExpansionTile(
            title: Text('some content'),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "You can register by clicking on the Sign In section located at the top right corner on the home page. Please provide the required information in the form that appears and click on submit. We will send a one-time password (OTP) to verify your mobile number. Post verification, you can start shopping on JioMart."),
              )
            ],
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0, 
        backgroundColor: AppColor.whitegray,
        centerTitle: true,
        // title: Image.asset(
        //   "images/assets/2.png",
        //   height: 50,
        // ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,color: AppColor.blackcolor,)),
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
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Need More Help?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: AppColor.graycolor,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: AppColor.indigocolor,
                            borderRadius: BorderRadius.circular(20.0)),
                        labelColor: AppColor.whitecolor,
                        unselectedLabelColor: AppColor.blackcolor,
                        controller: _tabController,
                     
                        isScrollable: true,
                        tabs: myTabs,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildTabContext(4),
            _buildTabContext(6),
            _buildTabContext(4),
            _buildTabContext(6),
            _buildTabContext(5),
            _buildTabContext(5),
            _buildTabContext(6),
            _buildTabContext(7)
          ],
        ),
      ),
    );
  }
}
