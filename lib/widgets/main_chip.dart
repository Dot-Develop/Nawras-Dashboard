import 'package:flutter/material.dart';
import 'package:nawras_dashboard/utils/color_constants.dart';

class MainChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconData mIcon;
  final Color color;
  final Function onPressed;

  MainChip(
      {@required this.label,
      @required this.color,
      @required this.icon,
      this.mIcon,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 2,
      splashColor: PaletteColors.whiteBg,
      hoverColor: PaletteColors.whiteBg,
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(22),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icon,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            mIcon == null
                ? SizedBox(
                    height: 0,
                  )
                : Icon(
                    mIcon,
                    size: 25,
                    color: Colors.white,
                  )
          ],
        ),
      ),
    );
  }
}
