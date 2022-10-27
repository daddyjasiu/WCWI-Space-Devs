import 'package:flutter/material.dart';
import 'package:wcwi_space_devs/models/article.dart';

import 'components/article_details_body.dart';

class ArticleDetailsScreen extends StatelessWidget {
  final Article article;

  const ArticleDetailsScreen({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${article.newsSite} article"),
        backgroundColor: Colors.grey[900],
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: IconButton(
              icon: const Icon(Icons.favorite_outline),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ArticleDetailsScreenBody(article: article),
    );
  }
}
