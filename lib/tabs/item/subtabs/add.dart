import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_dashboard/utils/color_constants.dart';
import 'package:nawras_dashboard/utils/text_style.dart';
import 'package:nawras_dashboard/widgets/RoundedButton.dart';

class AddItemTab extends StatefulWidget {
  @override
  _AddItemTabState createState() => _AddItemTabState();
}

class _AddItemTabState extends State<AddItemTab> {
  List<String> familyItemList = ["dddddd", "ddddddd", "Dddddddd"];

  List<String> hawpolMainList = [];
  List<String> hawpolSecondaryList = [];

  List<String> keesaItemList = [];

  final itemNameKr = TextEditingController();
  final itemNameAr = TextEditingController();
  final itemNameEn = TextEditingController();

  final descNameKr = TextEditingController();
  final descNameAr = TextEditingController();
  final descNameEn = TextEditingController();

  final barCode = TextEditingController();
  var itemFamily = "";

  //############################################

  var hawpolMain = "";
  var hawpolSecondary = "";
  var imageUrl = "";

  final storeCode = TextEditingController();
  var keesa = "";
  final keesaNumber = TextEditingController();

  final oneWeight = TextEditingController();
  final pechrawWieght = TextEditingController();

  final barCodePechraw = TextEditingController();

  final brand = "";

  final DateTime expiredDate = DateTime.now();

  //############################################
  //Slemani

  final classAController = TextEditingController();
  final classBController = TextEditingController();
  final classCController = TextEditingController();
  final classDController = TextEditingController();

  final multiClassAController = TextEditingController();
  final multiClassBController = TextEditingController();
  final multiClassCController = TextEditingController();
  final multiClassDController = TextEditingController();

  //
  // //############################################
  // //Hawler
  //
  // final classAHawler = TextEditingController();
  // final classBHawler  = TextEditingController();
  // final classCHawler  = TextEditingController();
  // final classDHawler  = TextEditingController();
  //
  // final multiClassAHawler  = TextEditingController();
  // final  multiClassBHawler  = TextEditingController();
  // final  multiClassCHawler  = TextEditingController();
  // final  multiClassDHawler  = TextEditingController();
  //
  //
  // //############################################
  // //Baghdad
  //
  // final classABaghdad = TextEditingController();
  // final classBBaghdad  = TextEditingController();
  // final classCBaghdad  = TextEditingController();
  // final classDBaghdad = TextEditingController();
  //
  // final multiClassABaghdad  = TextEditingController();
  // final  multiClassBBaghdad  = TextEditingController();
  // final  multiClassCBaghdad = TextEditingController();
  // final  multiClassDBaghdad  = TextEditingController();
  //
  // //############################################
  // //Hilla
  //
  // final classAHilla = TextEditingController();
  // final classBHilla = TextEditingController();
  // final classCHilla = TextEditingController();
  // final classDHilla = TextEditingController();
  //
  // final multiClassAHilla = TextEditingController();
  // final  multiClassBHilla = TextEditingController();
  // final  multiClassCHilla = TextEditingController();
  // final  multiClassDHilla  = TextEditingController();
  //
  // //############################################
  // //Halabja
  //
  // final classAHalabja= TextEditingController();
  // final classBHalabja = TextEditingController();
  // final classCHalabja = TextEditingController();
  // final classDHalabja = TextEditingController();
  //
  // final multiClassAHalabja = TextEditingController();
  // final  multiClassBHalabja= TextEditingController();
  // final  multiClassCHalabja= TextEditingController();
  // final  multiClassDHalabja = TextEditingController();
  //
  // //############################################
  // //Basra
  //
  // final classABasra= TextEditingController();
  // final classBBasra = TextEditingController();
  // final classCBasra = TextEditingController();
  // final classDBasra = TextEditingController();
  //
  // final multiClassABasra = TextEditingController();
  // final  multiClassBBasra= TextEditingController();
  // final  multiClassCBasra= TextEditingController();
  // final  multiClassDBasra = TextEditingController();
  //
  // //############################################
  // //Anbar
  //
  // final classAAnbar= TextEditingController();
  // final classBAnbar = TextEditingController();
  // final classCAnbar= TextEditingController();
  // final classDAnbar = TextEditingController();
  //
  // final multiClassAAnbar = TextEditingController();
  // final  multiClassBAnbar= TextEditingController();
  // final  multiClassCAnbar= TextEditingController();
  // final  multiClassDAnbar = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Item Name in Kurdish",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameKr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      minLines: 4,
                      maxLines: 8,
                      decoration: InputDecoration(
                        labelText: "Item Description in Kurdish",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: descNameKr,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Item Name in English",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameEn,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      minLines: 4,
                      maxLines: 8,
                      decoration: InputDecoration(
                        labelText: "Item Description in English",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: descNameEn,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Item Name in Arabic",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameAr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      minLines: 4,
                      maxLines: 8,
                      decoration: InputDecoration(
                        labelText: "Item Description in Arabic",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: descNameAr,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RoundedButton(
                            title: "Upload Pic",
                            isThikHeight: true,
                            onPressed: () {}),
//                        Image.network(
//                          "https://icons-for-free.com/iconfiles/png/512/box+document+outline+share+top+upload+icon-1320195323221671611.png",
//                          height: 50,
//                          width: 80,
//                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Store Code",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameKr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name of Pechanawa",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameEn,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "One Weight",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameEn,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Parcha Weight",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameEn,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Type of Pechawana :",
                          style: AppTextStyle.boldTitle18
                              .copyWith(color: PaletteColors.blackAppColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            value: familyItemList[0],
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            style:
                                TextStyle(color: PaletteColors.darkRedColorApp),
                            underline: Container(
                              height: 1,
                              color: PaletteColors.blackAppColor,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                itemFamily = newValue;
                              });
                            },
                            items: familyItemList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Bar Code",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameKr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Family Item",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                      ),
                      controller: itemNameKr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Bar Code",
              labelStyle: TextStyle(color: PaletteColors.blackAppColor),
            ),
            controller: itemNameKr,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Family Item",
              labelStyle: TextStyle(color: PaletteColors.blackAppColor),
            ),
            controller: itemNameKr,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Pechawanawa Bar Code",
              labelStyle: TextStyle(color: PaletteColors.blackAppColor),
            ),
            controller: itemNameKr,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Text(
                "Main Hawpol :",
                style: AppTextStyle.boldTitle18
                    .copyWith(color: PaletteColors.blackAppColor),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: familyItemList[0],
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: PaletteColors.darkRedColorApp),
                  underline: Container(
                    height: 1,
                    color: PaletteColors.blackAppColor,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      itemFamily = newValue;
                    });
                  },
                  items: familyItemList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Secondary Hawpol :",
                style: AppTextStyle.boldTitle18
                    .copyWith(color: PaletteColors.blackAppColor),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: familyItemList[0],
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: PaletteColors.darkRedColorApp),
                  underline: Container(
                    height: 1,
                    color: PaletteColors.blackAppColor,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      itemFamily = newValue;
                    });
                  },
                  items: familyItemList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Brand :",
                style: AppTextStyle.boldTitle18
                    .copyWith(color: PaletteColors.blackAppColor),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: familyItemList[0],
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: PaletteColors.darkRedColorApp),
                  underline: Container(
                    height: 1,
                    color: PaletteColors.blackAppColor,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      itemFamily = newValue;
                    });
                  },
                  items: familyItemList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "${selectedDate.toLocal()}".split(' ')[0],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20.0,
            ),
            OutlinedButton(
              onPressed: () => _selectDate(context), // Refer step 3
              child: Text(
                'Select date',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Divider(
          height: 20,
          thickness: 2,
          color: PaletteColors.blackAppColor,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Class A Single",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: itemNameKr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Class B Single",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: itemNameAr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Class C Single",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: itemNameKr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Class D Single",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: itemNameAr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Class A Plural",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: itemNameKr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Class B Plural",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: itemNameAr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Class C Plural",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: itemNameKr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Class D Plural",
                        labelStyle:
                            TextStyle(color: PaletteColors.blackAppColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: PaletteColors.cardColorApp, width: 1.0),
                        ),
                      ),
                      controller: itemNameAr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RoundedButton(
                  title: "Save", isThikHeight: true, onPressed: () {}),
              SizedBox(
                width: 20,
              ),
              RoundedButton(
                  title: "Save Family Item Info",
                  isThikHeight: true,
                  onPressed: () {}),
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
          color: PaletteColors.blackAppColor,
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}
