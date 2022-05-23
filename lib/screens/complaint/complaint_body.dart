import 'package:flutter/material.dart';
import 'package:rit_smart_hostel/utils/color_utils.dart';

import '../../widgets/category_card.dart';

class ComplaintBody extends StatelessWidget {
  const ComplaintBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Key k = Key("");
    return Stack(
      children: <Widget>[
        Container(
          // Here the height of the container is 45% of our total height
          decoration: BoxDecoration(
            color: ColorConstants.kWhiteColor,
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CategoryCard(
                        title: "Electricity",
                        svgSrc: "assets/icons/electricity.svg",
                        press: () {},
                        key: k,
                      ),
                      CategoryCard(
                        title: "Water",
                        svgSrc: "assets/icons/water.svg",
                        press: () {},
                        key: k,
                      ),
                      CategoryCard(
                        title: "WI-FI",
                        svgSrc: "assets/icons/wifi.svg",
                        press: () {},
                        key: k,
                      ),
                      CategoryCard(
                        title: "Cleaning",
                        svgSrc: "assets/icons/cleaning.svg",
                        press: () {},
                        key: k,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
