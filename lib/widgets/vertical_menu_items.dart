import 'package:flutter/material.dart';
import 'package:web_flutter/constants/controllers.dart';
import 'package:get/get.dart';
import 'package:web_flutter/constants/style.dart';
import 'package:web_flutter/widgets/custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const VerticalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        onTap;
      },
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGray.withOpacity(.1)
                : Colors.transparent,
            child: Row(children: [
              Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  child: Container(
                    width: 3,
                    height: 72,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: menuController.returnIconFor(itemName),
                  ),
                  if (!menuController.isActive(itemName))
                    Flexible(
                        child: CustomText(
                            text: itemName,
                            color: menuController.isHovering(itemName)
                                ? dark
                                : lightGray,
                            size: null,
                            weight: null))
                  else
                    Flexible(
                        child: CustomText(
                      text: itemName,
                      color: dark,
                      size: 18,
                      weight: FontWeight.bold,
                    ))
                ],
              )),
            ]),
          )),
    );
  }
}
