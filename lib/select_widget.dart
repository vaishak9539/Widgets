// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/alert_dialog.dart';
import 'package:widgets/circular_menu.dart';
import 'package:widgets/curved_navigation_bar.dart';
import 'package:widgets/hero_widget.dart';
import 'package:widgets/scrollbar.dart';
import 'package:widgets/search.dart';
import 'package:widgets/bottomnavigationbar.dart';
import 'package:widgets/button.dart';
import 'package:widgets/check_box.dart';
import 'package:widgets/coustom/coustom_cheking.dart';
import 'package:widgets/date.dart';
import 'package:widgets/date_and_time.dart';
import 'package:widgets/drawer.dart';
import 'package:widgets/drop_down.dart';
import 'package:widgets/expanded.dart';
import 'package:widgets/expansion_tile.dart';
import 'package:widgets/imagepick.dart';
import 'package:widgets/list&map.dart';
import 'package:widgets/list_tile.dart';
import 'package:widgets/list_view_separate.dart';
import 'package:widgets/media_query.dart';
import 'package:widgets/navigator_sc1.dart';
import 'package:widgets/navigator_sc2.dart';
import 'package:widgets/navigator_sc3.dart';
import 'package:widgets/popupmenu_button.dart';
import 'package:widgets/radio.dart';
import 'package:widgets/rating_bar.dart';
import 'package:widgets/sharedpreference/shared_preferences.dart';
import 'package:widgets/sized_over_flow_box.dart';
import 'package:widgets/slider_with_package.dart';
import 'package:widgets/snack_bar.dart';
import 'package:widgets/splash_1.dart';
import 'package:widgets/staggered_grid_view/select_gridview.dart';
import 'package:widgets/stepper.dart';
import 'package:widgets/swiper.dart';
import 'package:widgets/tab_bar.dart';
import 'package:widgets/text_editing_controller.dart';
import 'package:widgets/text_spam.dart';
import 'package:widgets/time.dart';
import 'package:widgets/toast_message.dart';
import 'package:widgets/url_launcher.dart';
import 'package:widgets/validation.dart';

class SelectWidget extends StatefulWidget {
  const SelectWidget({super.key});

  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: col,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, "AlertDialogBox");
                      }, child: Text("Alert Dialog",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "BottomNavigationBar");
                      }, child: Text("BottomNavigationBar",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "ButtonTyp");
                      }, child: Text("Button",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "CheckBox");
                      }, child: Text("Check Box",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Date & Time");
                      }, child: Text("Date & Time",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Date");
                      }, child: Text("Date",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "SharedPreference");
                      }, child: Text("SharedPreference",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Drawer");
                      }, child: Text("Drawer",style: TextStyle(fontSize:16, color: Colors.black ),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Drop Down Button");
                      }, child: Text("Drop Down Button",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Expanded");
                      }, child: Text("Expanded",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Image Picker");
                      }, child: Text("Image Picker",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "List Tile");
                      }, child: Text("List Tile",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "List View Separater");
                      }, child: Text("List View Separater",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "ListAndMap");
                      }, child: Text("List & Map",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Media Query");
                      }, child: Text("Media Query",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Navigator Sc1");
                      }, child: Text("Navigator Sc1",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Navigator Sc2");
                      }, child: Text("Navigator Sc2",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Navigator Sc3");
                      }, child: Text("Navigator Sc3",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Radio Button");
                      }, child: Text("Radio Button",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "RatingBar");
                      }, child: Text("Rating Bar",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                     
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Slider");
                      }, child: Text("Slider ",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Snack Bar");
                      }, child: Text("Snack Bar",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Splash");
                      }, child: Text("Splash",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Tab Bar");
                      }, child: Text("Tab Bar",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Text Editing Controller");
                      }, child: Text("Text Editing Controller",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Time");
                      }, child: Text("Time",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Tost Message");
                      }, child: Text("Tost Message",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Url Launcher");
                      }, child: Text("Url Launcher",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Validation");
                      }, child: Text("Validation",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Coustom Cheking");
                      }, child: Text("Coustom Cheking",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Staggered GridView");
                      }, child: Text("Staggered GridView",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Swaiper");
                      }, child: Text("Swaiper",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Stepper");
                      }, child: Text("Stepper",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "ExpansionTile");
                      }, child: Text("ExpansionTile",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "PopupMenuButton");
                      }, child: Text("PopupMenuButton",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Search");
                      }, child: Text("Search",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "TextSpan");
                      }, child: Text("TextSpan",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "SizedOverFlowBox");
                      }, child: Text("SizedOverFlowBox",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "ScrollBar");
                      }, child: Text("ScrollBar",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "HeroWidget");
                      }, child: Text("HeroWidget",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Circular Menu");
                      }, child: Text("Circular Menu",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Slider With Package");
                      }, child: Text("Slider With Package",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "Curved Navigation Bar");
                      }, child: Text("Curved Navigation Bar",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.pushNamed(context, "MapSample");
                      }, child: Text("MapSample",style: TextStyle(fontSize:16 , color: Colors.black),)),

                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}