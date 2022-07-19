import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawras_dashboard/utils/color_constants.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;
  final bool isThikHeight;

  const RoundedButton({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.color,
    this.isThikHeight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: isThikHeight ? height / 25 : height / 16,
      child: MaterialButton(
        color: color == null ? PaletteColors.mainAppColor : color,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
                color: PaletteColors.blackAppColor.withOpacity(0.3))),
        onPressed: onPressed,
        textColor: Colors.white,
        child: Text(title, style: TextStyle(fontSize: 14)),
      ),
    );
  }
}
