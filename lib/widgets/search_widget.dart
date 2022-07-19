import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_dashboard/utils/color_constants.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController _searchController;

  SearchWidget(this._searchController, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: PaletteColors.cardColorApp,
        borderRadius: BorderRadius.circular(24.0),
      ),
      height: 40.0,
      child: Theme(
        data: ThemeData(
          primaryColor: PaletteColors.cardColorApp
              .withOpacity(PaletteColors.cardColorApp.opacity * 0.5),
        ),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                  fontSize: 16.0,
                  color: PaletteColors.blackAppColor
                      .withOpacity(PaletteColors.cardColorApp.opacity * 0.5)),
              prefixIcon: Icon(
                Icons.search,
                color: PaletteColors.blackAppColor,
              ),
              border: InputBorder.none),
          style: TextStyle(
            fontSize: 16.0,
            color: PaletteColors.blackAppColor,
          ),
        ),
      ),
    );
  }
}
