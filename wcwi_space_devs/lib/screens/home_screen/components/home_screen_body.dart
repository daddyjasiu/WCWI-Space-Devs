import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../models/article.dart';
import '../../article_details_screen/article_details_screen.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  late Future<List<Article>> futureArticles;

  @override
  void initState() {
    super.initState();
    futureArticles = getArticles();
  }

  //TODO fix body mapping in model, Article.fromJson does not return any value for some reason
  static Future<List<Article>> getArticles() async {
    // const articlesUrl = "https://api.spaceflightnewsapi.net/v3/articles";
    // final response = await http.get(Uri.parse(articlesUrl));
    //
    // if (response.statusCode == 200) {
    //   // If the server did return a 200 OK response,
    //   // then parse the JSON.
    //   final body = json.decode(response.body);
    //
    //   return body.map<Article>(Article.fromJson(body)).toList();
    // } else {
    //   // If the server did not return a 200 OK response,
    //   // then throw an exception.
    //   throw Exception('Failed to load album');
    // }

    return data.map<Article>(Article.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<Article>>(
        future: futureArticles,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            final articles = snapshot.data!;
            return buildArticles(articles);
          } else {
            return const Text("No article data.");
          }
        },
      ),
    );
  }

  Widget buildArticles(List<Article> articles) => ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];

        return GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleDetailsScreen(article: article))),
          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(article.imageUrl),
              ),
              title: Text(article.title),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(article.summary),
              ),
            ),
          ),
        );
      });
}
