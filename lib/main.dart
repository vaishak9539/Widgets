// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/alert_dialog.dart';
import 'package:widgets/bottomnavigationbar.dart';
import 'package:widgets/button.dart';
import 'package:widgets/check_box.dart';
import 'package:widgets/circular_menu.dart';
import 'package:widgets/coustom/coustom_cheking.dart';
import 'package:widgets/curved_navigation_bar.dart';
import 'package:widgets/date.dart';
import 'package:widgets/date_and_time.dart';
import 'package:widgets/drawer.dart';
import 'package:widgets/drop_down.dart';
import 'package:widgets/expanded.dart';
import 'package:widgets/expansion_tile.dart';
import 'package:widgets/hero_widget.dart';
import 'package:widgets/imagepick.dart';
import 'package:widgets/list&map.dart';
import 'package:widgets/list_tile.dart';
import 'package:widgets/list_view_separate.dart';
import 'package:widgets/map_sample.dart';
import 'package:widgets/media_query.dart';
import 'package:widgets/navigator_sc1.dart';
import 'package:widgets/navigator_sc2.dart';
import 'package:widgets/navigator_sc3.dart';
import 'package:widgets/popupmenu_button.dart';
import 'package:widgets/radio.dart';
import 'package:widgets/rating_bar.dart';
import 'package:widgets/scrollbar.dart';
import 'package:widgets/search.dart';
import 'package:widgets/select_widget.dart';
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


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: 

      // routes: {
      //   "First1" : (context) => First(),
      //   "Second2" : (context) => Second(),
      //   "Third3" : (context) => Third()
      // },NamedRoutes EX
      // initialRoute: "First1",

      routes: {
        "SelectWidget" : (context) => SelectWidget(),
        "AlertDialogBox" : (context) => Alert(),
        "BottomNavigationBar" : (context) => BottomNavigationBar1(),
        "ButtonTyp" :(context) => Button(),
        "CheckBox" :(context) => Check(),
        "Date & Time" :(context) => DateAndTime(),
        "Date" :(context) => Date(),
        "SharedPreference" :(context) => SharedPre(),
        "Drawer" :(context) => Drawer1(),
        "Drop Down Button" :(context) => Drop(),
        "Expanded" :(context) => Expand(),
        "Image Picker" :(context) => Imag(),
        "List Tile" : (context) => ListT(),
        "List View Separater" :(context) => Separater(),
        "ListAndMap" :(context) => ListAndMap(),
        "Media Query" : (context) => Mquery(),
        "Navigator Sc1" :(context) => Sc1(),
        "Navigator Sc2" :(context) => Sc2(),
        "Navigator Sc3" :(context) => Sc3(),
        "Radio Button" :(context) => RadioButton(),
        "RatingBar" :(context) => RatingBar1(),
        "Slider" :(context) => SliderWithPackage(),
        "Snack Bar" :(context) => Snackbar1(),
        "Splash" :(context) => SplashScreen(),
        "Tab Bar" :(context) => TabPage(),
        "Text Editing Controller" :(context) => TextEditingCon(),
        "Time" :(context) => Time(),
        "Tost Message" :(context) => Toast1(),
        "Url Launcher" :(context) => UrlLauncher(),
        "Validation" :(context) => Validation1(),
        "Coustom Cheking" :(context) => Cheking(),
        "Staggered GridView" :(context) => SelectedGridView(),
        "Swaiper" :(context) => Swiper1(),
        "Stepper" :(context) => StepperEx(),
        "ExpansionTile" :(context) => ExpansionTileEx(),
        "PopupMenuButton" :(context) => PopupMenuButtonEx(),
        "Search" :(context) => SearchEX(),
        "TextSpan" :(context) => TextSpanEX(),
        "SizedOverFlowBox" :(context) => OverFlowBoxEX(),
        "ScrollBar" :(context) => ScrollBarEx(),
        "HeroWidget" :(context) => HeroWidget(),
        "Circular Menu" :(context) => CircularMenuEX(),
        "Slider With Package" :(context) => SliderWithPackage(),
        "Curved Navigation Bar" :(context) => CurvedNavigationBar1(),
        "MapSample" : (context)=> MapSample()
      },
      initialRoute: "SelectWidget",
    );
  }
}

