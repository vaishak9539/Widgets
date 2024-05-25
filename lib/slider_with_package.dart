// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWithPackage extends StatefulWidget {
  const SliderWithPackage({super.key});

  @override
  State<SliderWithPackage> createState() => _SliderWithPackageState();
}

class _SliderWithPackageState extends State<SliderWithPackage> {
  Widget buildindicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: url_Images.length,

      // Effect 1

      // effect: ExpandingDotsEffect(
      //     dotWidth: 9, dotHeight: 9, activeDotColor: Colors.blue),

      // Effect 2

      // effect: CustomizableEffect(
      //     dotDecoration: DotDecoration(borderRadius: BorderRadius.circular(10)),
      //     activeDotDecoration: DotDecoration(
      //       height: 10,
      //       width: 10,
      //       borderRadius: BorderRadius.circular(10),
      //       color: Colors.green,
      //       dotBorder: DotBorder(color: Colors.grey),
      //     )),

      // Effect 3

      effect: JumpingDotEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: Colors.red,
        dotColor: Colors.grey,
        spacing: 10,
      ),
    );
  }

  Widget buildimage(urlimage) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            urlimage,
            fit: BoxFit.cover,
          ),
        ));
  }

  int activeIndex = 0;

  final url_Images = [
    "https://i.etsystatic.com/41340875/r/il/67b5eb/4715093007/il_fullxfull.4715093007_e4o3.jpg",
    "https://th.bing.com/th/id/OIP.0xWH3oqYBzfsz1Ft8Y9wxwAAAA?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.QkVsPpAKQ340IOw9Ir4w-wHaE7?rs=1&pid=ImgDetMain",
    "https://static2.hotcarsimages.com/wordpress/wp-content/uploads/2019/06/Feature-Electric.jpg",
    "https://i.pinimg.com/originals/1c/83/ca/1c83ca54e5dc0b374e5f715bed42865f.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: url_Images.length,
                itemBuilder: (context, index, realindex) {
                  final urlimages = url_Images[index];
                  return buildimage(urlimages);
                },
                options: CarouselOptions(
                  autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Durations.extralong4,
                  height: 300,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                )),
            SizedBox(
              height: 12,
            ),
            buildindicator()
          ],
        ),
      ),
    );
  }
}
