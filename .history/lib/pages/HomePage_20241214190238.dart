import 'package:flutter/material.dart';

import '../widgets/CustomNavBar.dart';
import '../widgets/NewMoviesWidget.dart';
import '../widgets/UpcomingWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello M4Z!X",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                        Text("What to watch?",
                            style: TextStyle(
                              color: Colors.white54,
                            )),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/profile.jpg",
                        height: 60,
                        width: 60,
                      ),
                    )
                  ],
                )),
            Container(
                height: 60,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 30,
                    ),
                    Container(
                        width: 300,
                        margin: const EdgeInsets.only(left: 5),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.white54),
                          ),
                        )),
                  ],
                )),
            const SizedBox(
              height: 30,
            ),
            Upcomingwidget(),
            const SizedBox(
              height: 40,
            ),
            NewMoviesWidget(),
          ],
        )),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
