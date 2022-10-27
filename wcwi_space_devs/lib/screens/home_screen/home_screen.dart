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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: IconButton(
              icon: const Icon(Icons.local_library),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: const HomeScreenBody(),
    );
  }
}
