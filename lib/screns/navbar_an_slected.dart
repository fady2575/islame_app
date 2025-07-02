import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavbarAnSlected extends StatelessWidget {
  String imegeName;

  NavbarAnSlected({required this.imegeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        "assets/svg/$imegeName.svg",
        height: 28,
        width: 28,
        fit: BoxFit.fill,
      ),
    );
  }
}
