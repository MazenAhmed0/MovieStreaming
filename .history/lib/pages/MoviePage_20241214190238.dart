import 'package:flutter/material.dart';
import 'package:movie_streaming/widgets/CustomNavBar.dart';

import '../widgets/MoveiPageButtons.dart';
import '../widgets/RecommendWidget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset("assets/images/Captain America.jpeg",
                height: 280, width: double.infinity, fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back,
                            color: Colors.white, size: 30),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(Icons.favorite_border,
                            color: Colors.white, size: 30),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.red,
                                  spreadRadius: 1,
                                  blurRadius: 8)
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/Captain America.jpeg",
                            height: 250,
                            width: 180,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 70, right: 50),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8)
                            ]),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 60,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MoveiPageButtons(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Captain America",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "This is a simple description of the movie, you can write here the description of the movie. This is a simple description of the movie, you can write here the description of the movie.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RecommendWidget(),
              ],
            )),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
