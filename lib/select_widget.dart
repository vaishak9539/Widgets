// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/alert_dialog.dart';
import 'package:widgets/circular_menu.dart';
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Alert(),));
                      }, child: Text("Alert Dialog",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationBar1(),));
                      }, child: Text("BottomNavigationBar",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Button(),));
                      }, child: Text("Button",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Check(),));
                      }, child: Text("Check Box",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DateAndTime()));
                      }, child: Text("Date & Time",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Date() ,));
                      }, child: Text("Date",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SharedPre() ,));
                      }, child: Text("SharedPreference",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Drawer1(),));
                      }, child: Text("Drawer",style: TextStyle(fontSize:16, color: Colors.black ),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Drop(),));
                      }, child: Text("Drop Down Button",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Expand(),));
                      }, child: Text("Expanded",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Imag(),));
                      }, child: Text("Image Picker",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ListT(),));
                      }, child: Text("List Tile",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => MyWidget(),));
                      }, child: Text("List View Separater",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => New(),));
                      }, child: Text("List & Map",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Mquery(),));
                      }, child: Text("Media Query",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Sc1(),));
                      }, child: Text("Navigator Sc1",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Sc2(),));
                      }, child: Text("Navigator Sc2",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Sc3(),));
                      }, child: Text("Navigator Sc3",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => RadioButton(),));
                      }, child: Text("Radio Button",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => RatingBar1(),));
                      }, child: Text("Rating Bar",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                     
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SliderWithPackage(),));
                      }, child: Text("Slider ",style: TextStyle(fontSize:16 , color: Colors.black),)),
              
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Snackbar1(),));
                      }, child: Text("Snack Bar",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen(),));
                      }, child: Text("Splash",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => TabPage(),));
                      }, child: Text("Tab Bar",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => TextEditingCon(),));
                      }, child: Text("Text Editing Controller",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Time(),));
                      }, child: Text("Time",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Toast1(),));
                      }, child: Text("Tost Message",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => UrlLauncher(),));
                      }, child: Text("Url Launcher",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Validation1(),));
                      }, child: Text("Validation",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Cheking(),));
                      }, child: Text("Coustom Cheking",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedGridView(),));
                      }, child: Text("Staggered GridView",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Swiper1(),));
                      }, child: Text("Swaiper",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => StepperEx(),));
                      }, child: Text("Stepper",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ExpansionTileEx(),));
                      }, child: Text("ExpansionTile",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PopupMenuButtonEx(),));
                      }, child: Text("PopupMenuButton",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SearchEX(),));
                      }, child: Text("Search",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => TextSpanEX(),));
                      }, child: Text("TextSpan",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => OverFlowBoxEX(),));
                      }, child: Text("SizedOverFlowBox",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ScrollBarEx(),));
                      }, child: Text("ScrollBar",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => HeroWidget(),));
                      }, child: Text("HeroWidget",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => CircularMenuEX(),));
                      }, child: Text("Circular Menu",style: TextStyle(fontSize:16 , color: Colors.black),)),

                     TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) =>  SliderWithPackage(),));
                      }, child: Text("Slider With Package",style: TextStyle(fontSize:16 , color: Colors.black),)),

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