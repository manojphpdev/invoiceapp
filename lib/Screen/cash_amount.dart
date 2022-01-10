import 'package:flutter/material.dart';
import 'package:invoiceapp/Screen/itemScreen.dart';
import 'package:invoiceapp/Utils/colors.dart';

class CashAmount extends StatefulWidget {
  const CashAmount({Key? key}) : super(key: key);

  @override
  _CashAmountState createState() => _CashAmountState();
}

class _CashAmountState extends State<CashAmount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text(
                      "Song harry",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("Coarage range"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: FlatButton(
                  onPressed: null,
                  child: const Text('Logout',
                      style: TextStyle(color: Colors.indigo)),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Colors.indigo,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "This month",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "10,000,000",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity, // <-- Your width
                    height: 50, // <-- Your height
                    child: ElevatedButton(
                      child: const Text("Cash", style: TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ColorsConst.themeColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: const BorderSide(
                                          color: ColorsConst.themeColor)))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemsScreen("Cash"),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity, // <-- Your width
                    height: 50, // <-- Your height
                    child: ElevatedButton(
                      child: const Text("Card", style: TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            ColorsConst.themeColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side:
                                const BorderSide(color: ColorsConst.themeColor),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemsScreen("Card"),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "All",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Cash",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "Card",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(children: const [
                    Text("Sort by", style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 20.09,
                    ),
                  ]),
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const ListTile(
                        leading: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("05:20"),
                        ),
                        trailing: Text(
                          "-12,000",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        title: Text(
                          "User name",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        subtitle: Text("Food I Cash"),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
