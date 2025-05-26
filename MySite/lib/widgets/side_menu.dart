import 'package:flutter/material.dart';
import 'package:mysite/constants/controllers.dart';
import 'package:mysite/constants/style.dart';
import 'package:mysite/helpers/responsiveness.dart';
import 'package:mysite/routing/routes.dart';
import 'package:mysite/widgets/custom_text.dart';
import 'package:mysite/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  // const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 40,),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/SBF_logo.png", width: 30),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "My Site",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),

              ],
            ),
          SizedBox(height: 40),
          Divider(color: lightGrey.withOpacity(.1), ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((itemName) => SideMenuItem(
              itemName: itemName == AuthenticationPageRoute ? "Log Out" : itemName,
              onTap: (){
                if(itemName == AuthenticationPageRoute){
                  // TODO: go to authentication page
                }
                if(!menuController.isActive(itemName)){
                  menuController.changeActiveitemTo(itemName);
                  if(ResponsiveWidget.isSmallScreen(context)){
                    Get.back();
                    //TODO: go to item name route
                  }
                }
              },
            )).toList(),
          )
        ],
      ),
    );
  }
}