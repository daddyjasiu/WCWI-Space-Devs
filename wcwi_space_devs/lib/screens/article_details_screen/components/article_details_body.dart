import 'package:flutter/material.dart';

import '../../../models/article.dart';

class ArticleDetailsScreenBody extends StatelessWidget {
  final Article article;

  const ArticleDetailsScreenBody({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          buildArticleDetailsCard(),
        ],
      ),
    );
  }

  Card buildArticleDetailsCard() {
    return Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16),
              child: SizedBox(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image.network(
                            article.imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Divider(),
                        Text(
                          article.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          article.summary,
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Published at: ${article.publishedAt}\n Source: ${article.newsSite}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
