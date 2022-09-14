import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  TextStyle textStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  CarouselController buttonCarouselController = CarouselController();
  int initialPage = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              scrollPhysics: BouncingScrollPhysics(),
              clipBehavior: Clip.antiAlias,
              height: 200.0,
              viewportFraction: 0.7,
              initialPage: initialPage,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (val, _) {
                setState(() {
                  initialPage = val;
                });
              },
              scrollDirection: Axis.horizontal,
            ),
            items: Global.games.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      i['images'],
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...Global.games.map((e) {
                int i = Global.games.indexOf(e);
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        buttonCarouselController.animateToPage(i);
                      },
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color:
                              (initialPage == i) ? Colors.black : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                  ],
                );
              }).toList(),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: textStyle,
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...Global.foryou
                    .map(
                      (e) => Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('detailpage', arguments: e);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(
                                    e['image'],
                                    scale: e['scale'],
                                  ),
                                ),
                              ),
                              Text(e['app']),
                              Row(
                                children: [
                                  Text(e['star']),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff239a7e),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular games",
                  style: textStyle,
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...Global.games
                    .map(
                      (e) => Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('detailpage', arguments: e);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Image.asset(
                                    e['image'],
                                    scale: e['scale'],
                                  ),
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              Text(e['app']),
                              Row(
                                children: [
                                  Text(e['star']),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff239a7e),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ads",
                ),
                SizedBox(width: 5),
                Text(
                  "Social media",
                  style: textStyle,
                ),
                Spacer(),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...Global.socialapps
                    .map(
                      (e) => Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('detailpage', arguments: e);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Image.asset(
                                    e['image'],
                                    scale: e['scale'],
                                  ),
                                  height: 80,
                                  width: 100,
                                ),
                              ),
                              Text(e['app']),
                              Row(
                                children: [
                                  Text(e['star']),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff239a7e),
                                    size: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
