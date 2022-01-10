import 'package:flutter/material.dart';
import 'package:invoiceapp/Screen/CardScreen.dart';
import 'package:invoiceapp/Screen/CashScreen.dart';
import 'package:invoiceapp/Utils/colors.dart';

class ItemsScreen extends StatefulWidget {
  String pageIndex;

  ItemsScreen(this.pageIndex, {Key? key}) : super(key: key);

  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: widget.pageIndex == 'Cash' ? 0 : 1,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          flexibleSpace: const Center(
            child: TabBar(
              physics: NeverScrollableScrollPhysics(),
              indicatorColor: Colors.transparent,
              labelColor: ColorsConst.themeColor,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  icon: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Cash",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                Tab(
                  icon: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Card",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            CashScreen(),
            CardScreen(),
          ],
        ),
      ),
    );
  }
}
