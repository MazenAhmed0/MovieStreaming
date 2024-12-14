import 'package:flutter/material.dart';
import '../models/NewMoviesModel.dart';

class NewMoviesWidget extends StatefulWidget {
  const NewMoviesWidget({super.key});

  @override
  State<NewMoviesWidget> createState() => _NewMoviesWidgetState();
}

class _NewMoviesWidgetState extends State<NewMoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("New Movies",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              Text(
                "See All",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < contents.length; i++)
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "moviePage");
                  },
                  child: Container(
                      height: 305,
                      width: 190,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFF292B37),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF292B37).withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                contents[i].img,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contents[i].title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(contents[i].type,
                                    style: const TextStyle(
                                      color: Colors.white54,
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "${contents[i].rate}",
                                      style: const TextStyle(
                                          color: Colors.white54, fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                )
            ],
          ),
        )
      ],
    );
  }
}
