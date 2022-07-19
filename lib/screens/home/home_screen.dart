import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_dashboard/tabs/babazar/babazar.dart';
import 'package:nawras_dashboard/tabs/buyer/buyer.dart';
import 'package:nawras_dashboard/tabs/item/item.dart';
import 'package:nawras_dashboard/tabs/locationzone/locationzone.dart';
import 'package:nawras_dashboard/tabs/manager/manager.dart';
import 'package:nawras_dashboard/tabs/more/more.dart';
import 'package:nawras_dashboard/tabs/offer/offer.dart';
import 'package:nawras_dashboard/tabs/order/order.dart';
import 'package:nawras_dashboard/tabs/report/report.dart';
import 'package:nawras_dashboard/tabs/review/review.dart';
import 'package:nawras_dashboard/tabs/saleperson/hero_screen.dart';
import 'package:nawras_dashboard/tabs/settings/settings.dart';
import 'package:nawras_dashboard/tabs/trafficline/traffic_line.dart';
import 'package:nawras_dashboard/tabs/visit/visit.dart';
import 'package:nawras_dashboard/utils/color_constants.dart';
import 'package:nawras_dashboard/utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int active = 0;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 14, initialIndex: 0)
      ..addListener(() {
        setState(() {
          active = tabController.index;
        });
      });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
            MediaQuery.of(context).size.width < 1300 ? true : false,
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 32),
                child: Text(
                  "Nawras Panel",
                  style: AppTextStyle.boldTitle24
                      .copyWith(color: PaletteColors.whiteBg),
                ),
              ),
            ]),
        actions: <Widget>[
          InkWell(
            onTap: () {
              print("clicked");
            },
            child: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.live_help_outlined,
                    color: Colors.black,
                    size: 22,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("Dot Dev ",
                      style: TextStyle(
                        fontSize: 14,
                        color: PaletteColors.mainAppColor,
                      )),
                  Text(
                    "Help Center",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 32),
          Container(child: Icon(Icons.web)),
          SizedBox(width: 32),
          Container(child: Icon(Icons.account_circle)),
          SizedBox(width: 32),
          Container(
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(width: 32),
        ],
        backgroundColor: PaletteColors.mainAppColor,
        // automaticallyImplyLeading: false,
      ),
      body: Row(
        children: <Widget>[
          MediaQuery.of(context).size.width < 1300
              ? Container()
              : Card(
                  elevation: 2.0,
                  child: Container(
                      margin: EdgeInsets.all(0),
                      height: MediaQuery.of(context).size.height,
                      width: 300,
                      color: Colors.white,
                      child: listDrawerItems(false)),
                ),
          Container(
            width: MediaQuery.of(context).size.width < 1300
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width - 310,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                ItemTab(),
                LocationZoneTab(),
                SalePersonTab(),
                TrafficLineTab(),
                OfferTab(),
                BuyerTab(),
                OrderTab(),
                ReportTab(),
                VisitTab(),
                BaBazarTab(),
                ManagerTab(),
                MoreTab(),
                SettingsHomeTab(),
                ReviewHomeTab(),
              ],
            ),
          )
        ],
      ),
      drawer: Padding(
          padding: EdgeInsets.only(top: 56),
          child: Drawer(child: listDrawerItems(true))),
    );
  }

  Widget listDrawerItems(bool drawerStatus) {
    return ListView(
      children: <Widget>[
        dashboardTabsFlatButton("Items", Icons.label, 0, drawerStatus),
        dashboardTabsFlatButton(
            "Locations And Zones", Icons.location_city_sharp, 1, drawerStatus),
        dashboardTabsFlatButton(
            "Sale Persons", Icons.person_pin_circle_outlined, 2, drawerStatus),
        dashboardTabsFlatButton(
            "Traffic Line", Icons.traffic_outlined, 3, drawerStatus),
        dashboardTabsFlatButton(
            "Offers", Icons.card_giftcard_outlined, 4, drawerStatus),
        dashboardTabsFlatButton(
            "Buyers", Icons.edit_attributes_rounded, 5, drawerStatus),
        dashboardTabsFlatButton(
            "Orders", Icons.shopping_basket_outlined, 6, drawerStatus),
        dashboardTabsFlatButton("Reports", Icons.report, 7, drawerStatus),
        dashboardTabsFlatButton(
            "Visits", Icons.directions_railway, 8, drawerStatus),
        dashboardTabsFlatButton(
            "Ba Bazarkrdn", Icons.shopping_cart, 9, drawerStatus),
        dashboardTabsFlatButton(
            "Manager", Icons.admin_panel_settings_rounded, 10, drawerStatus),
        dashboardTabsFlatButton(
            "More", Icons.more_horiz_rounded, 11, drawerStatus),
        dashboardTabsFlatButton("Settings", Icons.settings, 12, drawerStatus),
        dashboardTabsFlatButton("Review", Icons.rate_review, 13, drawerStatus),
      ],
    );
  }

  Widget dashboardTabsFlatButton(
      String label, IconData icon, int index, bool drawerStatus) {
    return FlatButton(
      color: tabController.index == index ? Colors.grey[100] : Colors.white,
      onPressed: () {
        tabController.animateTo(index);
        drawerStatus ? Navigator.pop(context) : print("");
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
          child: Row(children: [
            Icon(icon),
            SizedBox(
              width: 8,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
