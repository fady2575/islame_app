import 'package:flutter/material.dart';
import 'package:islame_app/brobertes/theme_color.dart';

class LodengIndicator extends StatelessWidget {
Color ?color;
LodengIndicator({ this.color});
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(
      color:color?? ThemeColor.primary,
    ));
  }
}
