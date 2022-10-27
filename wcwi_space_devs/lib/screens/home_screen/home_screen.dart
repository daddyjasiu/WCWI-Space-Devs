import 'package:flutter/material.dart';

import 'components/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WCWI Space Dev"),
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            //TODO onPressed getArticles() function trigger to refresh articles list
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: IconButton(
              icon: const Icon(Icons.local_library),
              //TODO implement favourites screen with articles marked as favourite (the model is ready)
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: const HomeScreenBody(),
    );
  }
}
