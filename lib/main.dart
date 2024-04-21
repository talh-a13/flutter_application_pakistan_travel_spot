import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

// Follow Flutter For More ( ノ・・)ノ

class _HomepageState extends State<Homepage> {
  late PageController _pageController;
  void _onScroll() {}
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image: "assets/1.jpg",
              title: "Fairy Meadows",
              description:
                  "Fairy Meadows, named by German climbers and locally known as Joot, is an area of grassland near one of the base camp sites of Nanga Parbat, located in Diamer District in Gilgit-Baltistan region in Pakistan"),
          makePage(
              page: 2,
              image: "assets/2.jpg",
              title: "Neelum Vally ",
              description:
                  "Neelum is a district of Pakistan-administered Azad Kashmir in the disputed Kashmir region.Neelum Valley is one of the most visited areas among northern areas of Pakistan."),
          makePage(
              page: 3,
              image: "assets/3.jpg",
              title: "Faisal Mosque ",
              description:
                  "The Faisal Mosque (Urdu: فیصل مسجد, romanized: faisal masjid) is the national mosque of Pakistan, located in the capital city, Islamabad. It is the fifth-largest mosque in the world"),
          makePage(
              page: 4,
              image: "assets/4.jpg",
              title: "Badshahi Mosque ",
              description:
                  "The Badshahi Mosque is an iconic Mughal-era congregational mosque in Lahore, Punjab, Pakistan.It is the second largest mosque in Pakistan and the fifth largest mosque in the world."),
          makePage(
              page: 5,
              image: "assets/5.jpg",
              title: "Rohtas Fort ",
              description:
                  "Rohtas Fort is a 16th-century fortress located near the city of Dina in Jhelum district of the Punjab province of Pakistan. Raja Todar Mal, the minister of the Sur king Sher Shah Suri, supervised the construction of the fort which is now one of the largest and most formidable in Punjab")
        ],
      ),
    );
  }
}

Widget makePage({image, title, description, page}) {
  var totalPage = 5;
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    child: Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  page.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  // ignore: prefer_interpolation_to_compose_strings
                  "/" + totalPage.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Animate(
                    effects: [
                      FadeEffect(delay: 500.ms),
                      SlideEffect(),
                    ],
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "5.0",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 15,
                        height: 1.9,
                        color: Colors.white.withOpacity(0.7)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Read More ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    ),
  );
}
