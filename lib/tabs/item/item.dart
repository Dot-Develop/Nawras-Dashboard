import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_dashboard/tabs/item/subtabs/Combine.dart';
import 'package:nawras_dashboard/tabs/item/subtabs/add.dart';
import 'package:nawras_dashboard/tabs/item/subtabs/excel.dart';
import 'package:nawras_dashboard/tabs/item/subtabs/main.dart';
import 'package:nawras_dashboard/utils/color_constants.dart';
import 'package:nawras_dashboard/widgets/main_chip.dart';

class ItemTab extends StatefulWidget {
  @override
  _ItemTabState createState() => _ItemTabState();
}

class _ItemTabState extends State<ItemTab> with SingleTickerProviderStateMixin {
  int mainTab = 0;
  int addTab = 1;
  int combineTab = 2;
  int excelTab = 3;

  bool loading = false;

  TabController tabController;
  int active = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 4, initialIndex: 0)
      ..addListener(() {
        setState(() {
          active = tabController.index;
        });
      });
  }

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 12),
          child: Column(
            children: [
              if (active == 0)
                Row(
                  children: [
                    Expanded(
                      child: MainChip(
                        label: "Add Items",
                        color: PaletteColors.mainAppColor,
                        icon: Icons.home,
                        mIcon: Icons.add,
                        onPressed: () {
                          setState(() {
                            tabController.animateTo(addTab);
                            active = addTab;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: MainChip(
                        label: "Combined Items",
                        color: Colors.lightBlueAccent,
                        mIcon: Icons.add,
                        icon: Icons.ac_unit_outlined,
                        onPressed: () {
                          setState(() {
                            tabController.animateTo(combineTab);
                            active = combineTab;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: MainChip(
                        label: "Edit Using Excel",
                        color: Colors.greenAccent,
                        mIcon: Icons.edit,
                        icon: Icons.edit_attributes_rounded,
                        onPressed: () {
                          setState(() {
                            tabController.animateTo(excelTab);
                            active = excelTab;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: MainChip(
                        label: "Combined Items",
                        color: Colors.deepOrangeAccent,
                        icon: Icons.line_style_outlined,
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: MainChip(
                        label: "Brands",
                        color: Colors.pinkAccent,
                        icon: Icons.branding_watermark,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              Expanded(
                child: SingleChildScrollView(
                  child: tabs[active],
                ),
              ),
            ],
          ),
        ),
        if (active != 0)
          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: PaletteColors.darkRedColorApp,
              child: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  setState(() {
                    active = 0;
                  });
                });
              },
            ),
          ),
      ],
    );
  }

  final List tabs = [
    MainItemTab(),
    AddItemTab(),
    CombineItemTab(),
    ExcelItemTab(),
  ];
}
