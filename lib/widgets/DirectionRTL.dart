import 'package:flutter/cupertino.dart';

class DirectionalRTL extends StatelessWidget {
  final Widget child;

  DirectionalRTL({@required  this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: child);
  }
}