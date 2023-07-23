import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Row(
            children: [
              const Text(
                "See More ",
                style: TextStyle(color: Colors.grey),
              ),
              SvgPicture.asset(
                "assets/icons/arrow_right.svg",
                color: Colors.grey,
                width: 6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
