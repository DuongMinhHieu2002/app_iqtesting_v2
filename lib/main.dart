import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizzdemo/list_questions.dart';
import 'package:quizzdemo/result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
    Color seconColor = Colors.blue;
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "IQ Testing",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/iq.jpg",
                    width: 24,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: SizedBox(
              width: 300.0, // Độ rộng của GridView
              height: 300.0,
              child: GridView.count(
                childAspectRatio: 1.0,
                padding: EdgeInsets.only(left: 16, right: 16),
                crossAxisCount: 2,
                crossAxisSpacing: 10.0, // Khoảng cách ngang giữa các mục
                mainAxisSpacing: 10.0,
                // mainAxisAlignment: MainAxisAlignment.center, // Số cột
                children: <Widget>[
                  DashboardButton(
                    title: 'synthetic',
                    imageURl: "assets/synthesis.png",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainApp(),
                        ),
                      );
                    },
                  ),
                  DashboardButton(
                    title: 'History',
                    imageURl: "assets/history.jpg",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => History_Scren(),
                        ),
                      );
                    },
                  ),
                  DashboardButton(
                    title: 'Geography',
                    imageURl: "assets/geography.png",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GeoGrapic(),
                        ),
                      );
                    },
                  ),
                  DashboardButton(
                    title: 'Math',
                    imageURl: "assets/math.png",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Math(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String title;
  final String imageURl;
  final VoidCallback onPressed;

  DashboardButton(
      {required this.title, required this.onPressed, required this.imageURl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff453658),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                imageURl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Color mainColor = Color(0xFF252c4a);
  Color seconColor = Colors.blue;
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color btnColor = Colors.blue;
  int Score = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            itemCount: questions.length,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Question ${index + 1}/${questions.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      questions[index].image!,
                      width: 400,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    questions[index].question!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 5),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPressed
                            ? questions[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value
                                ? isTrue
                                : isFalse
                            : seconColor,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (questions[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  Score += 10;
                                  print(Score);
                                }
                              },
                        child: Text(
                          questions[index].answers!.keys.toList()[i],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(),
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Result_Screen(Score)));
                                }
                              : () {
                                  _controller!.nextPage(
                                      duration: Duration(microseconds: 500),
                                      curve: Curves.linear);
                                }
                          : null,
                      child: Text(
                        index + 1 == questions.length
                            ? "See result"
                            : "Next question",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              );
            },
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class History_Scren extends StatefulWidget {
  const History_Scren({Key? key});

  @override
  State<History_Scren> createState() => _History_ScrenState();
}

class _History_ScrenState extends State<History_Scren> {
  late PageController _controller; // Tạo PageController mới

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color btnColor = Colors.blue;
  int Score = 0;

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
    Color seconColor = Colors.blue;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller, // Sử dụng PageController mới
            itemCount: questions.length,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Question ${index + 1}/${historys.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    historys[index].question!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (int i = 0; i < historys[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 5),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPressed
                            ? historys[index].answers!.entries.toList()[i].value
                                ? isTrue
                                : isFalse
                            : seconColor,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (historys[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  Score += 10;
                                  print(Score);
                                }
                              },
                        child: Text(
                          historys[index].answers!.keys.toList()[i],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(),
                      onPressed: isPressed
                          ? index + 1 == historys.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Result_Screen(Score)));
                                }
                              : () {
                                  _controller.nextPage(
                                      duration: Duration(microseconds: 500),
                                      curve: Curves.linear);
                                }
                          : null,
                      child: Text(
                        index + 1 == historys.length
                            ? "See result"
                            : "Next question",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              );
            },
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GeoGrapic extends StatefulWidget {
  const GeoGrapic({super.key});

  @override
  State<GeoGrapic> createState() => _GeoGrapicState();
}

class _GeoGrapicState extends State<GeoGrapic> {
  late PageController _controller; // Tạo PageController mới

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color btnColor = Colors.blue;
  int Score = 0;
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
    Color seconColor = Colors.blue;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller, // Sử dụng PageController mới
            itemCount: questions.length,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Question ${index + 1}/${geographics.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    geographics[index].question!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (int i = 0; i < geographics[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 5),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPressed
                            ? geographics[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value
                                ? isTrue
                                : isFalse
                            : seconColor,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (geographics[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  Score += 10;
                                  print(Score);
                                }
                              },
                        child: Text(
                          geographics[index].answers!.keys.toList()[i],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(),
                      onPressed: isPressed
                          ? index + 1 == geographics.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Result_Screen(Score)));
                                }
                              : () {
                                  _controller.nextPage(
                                      duration: Duration(microseconds: 500),
                                      curve: Curves.linear);
                                }
                          : null,
                      child: Text(
                        index + 1 == geographics.length
                            ? "See result"
                            : "Next question",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              );
            },
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Math extends StatefulWidget {
  const Math({super.key});

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {
  late PageController _controller; // Tạo PageController mới

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color btnColor = Colors.blue;
  int Score = 0;
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
    Color seconColor = Colors.blue;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller, // Sử dụng PageController mới
            itemCount: questions.length,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Question ${index + 1}/${maths.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    maths[index].question!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (int i = 0; i < maths[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 5),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPressed
                            ? maths[index].answers!.entries.toList()[i].value
                                ? isTrue
                                : isFalse
                            : seconColor,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (maths[index]
                                    .answers!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  Score += 10;
                                  print(Score);
                                }
                              },
                        child: Text(
                          maths[index].answers!.keys.toList()[i],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(),
                      onPressed: isPressed
                          ? index + 1 == maths.length
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Result_Screen(Score)));
                                }
                              : () {
                                  _controller.nextPage(
                                      duration: Duration(microseconds: 500),
                                      curve: Curves.linear);
                                }
                          : null,
                      child: Text(
                        index + 1 == maths.length
                            ? "See result"
                            : "Next question",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              );
            },
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
