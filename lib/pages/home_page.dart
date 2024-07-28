import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          makePost(
            image1: "assets/images/image1.jpg",
            image2: "assets/images/image2.jpg",
            image3: "assets/images/image3.jpg",
            image4: "assets/images/image4.jpg",
            text1: "fruits",
            text2: "cars",
            text3: "clothes",
            text4: "sweets",
          ),
          makePost(
            image1: "assets/images/image1.jpg",
            image2: "assets/images/image2.jpg",
            image3: "assets/images/image3.jpg",
            image4: "assets/images/image4.jpg",
            text1: "fruits",
            text2: "cars",
            text3: "clothes",
            text4: "sweets",
          ),
        ],
      ),
    );
  }

  Widget makePost({image1, image2, image3, image4, text1, text2, text3, text4}) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 310,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image1),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    text1.toString().tr(),
                    style: TextStyle(
                      backgroundColor: Colors.black54,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image2),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    text2.toString().tr(),
                    style: TextStyle(
                      backgroundColor: Colors.black54,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image3),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    text3.toString().tr(),
                    style: TextStyle(
                      backgroundColor: Colors.black54,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 310,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image4),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    text4.toString().tr(),
                    style: TextStyle(
                      backgroundColor: Colors.black54,
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
