import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/components/ripple_container.dart';

import '../../../constants.dart';
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
    return RippleContainer(
      onTap: press,
      margin: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(5)),
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      color: kSecondaryColor.withOpacity(0.1),
      borderRadius: borderRadius,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: const Color.fromARGB(225, 53, 53, 53),
            ),
          ),
          Expanded(child: Container()),
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
    );
  }
}
