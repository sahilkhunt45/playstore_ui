import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToadyPage extends StatefulWidget {
  const ToadyPage({Key? key}) : super(key: key);

  @override
  State<ToadyPage> createState() => _ToadyPageState();
}

class _ToadyPageState extends State<ToadyPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(
              "SATURDAY 3 SEPTEMBER",
              style: TextStyle(
                letterSpacing: 1,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: 400,
                    width: 600,
                    child: Image.asset(
                      'assets/images/i1.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RATED 13+",
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Welcome to Minecraft!",
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 70,
                width: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/images/i2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Minecraft",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Mind game & Explore",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 75,
                      child: Text(
                        "GET",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: 400,
                    width: 600,
                    child: Image.asset(
                      'assets/images/i3.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RATED 17+",
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Welcome to BGMI!",
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 70,
                width: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/images/pub1.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "BGMI",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Serviving & Fighting",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 75,
                      child: Text(
                        "GET",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
