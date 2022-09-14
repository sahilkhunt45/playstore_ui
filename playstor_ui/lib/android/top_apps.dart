import 'package:flutter/material.dart';

import '../globals.dart';

class TopAppsPage extends StatefulWidget {
  const TopAppsPage({Key? key}) : super(key: key);

  @override
  State<TopAppsPage> createState() => _TopAppsPageState();
}

class _TopAppsPageState extends State<TopAppsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 35),
              Text("Show installed apps"),
              Spacer(),
              Switch(value: false, onChanged: (val) {}),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 30),
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Top free",
                      style: TextStyle(color: Colors.green),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 30),
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.green.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(color: Colors.green),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10, left: 30),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.green.shade300),
                ),
                child: Text(
                  "New",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          ...Global.foryou
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('detailpage', arguments: e);
                  },
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          e['image'],
                          scale: e['scale'],
                        ),
                        height: 100,
                        width: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e['app'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text("Free"),
                          Row(
                            children: [
                              Text(
                                e['star'],
                              ),
                              Icon(Icons.star, size: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          ...Global.games
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('detailpage', arguments: e);
                  },
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          e['image'],
                          scale: e['scale'],
                        ),
                        height: 100,
                        width: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e['app'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text("Free"),
                          Row(
                            children: [
                              Text(
                                e['star'],
                              ),
                              Icon(Icons.star, size: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          ...Global.socialapps
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('detailpage', arguments: e);
                  },
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          e['image'],
                          scale: e['scale'],
                        ),
                        height: 100,
                        width: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e['app'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text("Free"),
                          Row(
                            children: [
                              Text(
                                e['star'],
                              ),
                              Icon(Icons.star, size: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
