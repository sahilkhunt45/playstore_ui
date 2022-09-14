import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  TextStyle textStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade50,
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 20),
          Icon(Icons.more_vert, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "${res['image']}",
                      scale: res['scale'],
                    ),
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${res['app']}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Noodlecake Studio Inc",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff128661),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Contains ads - In-app purschases",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${res['star']}",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                            size: 14,
                          ),
                        ],
                      ),
                      Text(
                        "95k reviews",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.grey,
                    height: 25,
                    width: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "54M",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 14,
                          ),
                        ],
                      ),
                      Text(
                        "Downloads",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.grey,
                    height: 25,
                    width: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.interpreter_mode_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                      Text(
                        "Everyone",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 1),
                ],
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 34,
                width: 420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xff128661),
                ),
                child: Text(
                  "Install",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 420,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset(
                      "${res['images']}",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Icon(
                    Icons.play_circle_fill_rounded,
                    color: Colors.black.withOpacity(0.5),
                    size: 60,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "About this app",
                      style: textStyle,
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Discover the endless desert",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10, left: 30),
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff0d825a)),
                    ),
                    child: Text(
                      "Action",
                      style: TextStyle(
                        color: Color(0xff0d825a),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10, left: 30),
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff0d825a)),
                    ),
                    child: Text(
                      "Editor's choice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0d825a),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      "Ratings & reviews",
                      style: textStyle,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.error_outline,
                      size: 20,
                      color: Color(0xff0d825a),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "${res['star']}",
                    style: TextStyle(fontSize: 50),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("5"),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 12,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200,
                            ),
                            child: Container(
                              height: 10,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff0d825a),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text("4"),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 12,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200,
                            ),
                            child: Container(
                              height: 10,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff0d825a),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text("3"),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 12,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200,
                            ),
                            child: Container(
                              height: 10,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff0d825a),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text("2"),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 12,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200,
                            ),
                            child: Container(
                              height: 10,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff0d825a),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text("1"),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 12,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200,
                            ),
                            child: Container(
                              height: 10,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff0d825a),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
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
