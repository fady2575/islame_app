import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../brobertes/theme_color.dart';

class NavbarSlected extends StatelessWidget {
  String imegeName;

  NavbarSlected({required this.imegeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: ThemeColor.Black.withValues(alpha: 0.6),
      ),

      child: SvgPicture.asset(
        "assets/svg/$imegeName.svg",
        height: 22,
        width: 22,
        fit: BoxFit.fill,
        colorFilter:ColorFilter.mode(ThemeColor.wihate, BlendMode.srcIn)
      ),
    );
  }
}
