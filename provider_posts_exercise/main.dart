import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const PostApp());
}

class Post {
  final int id;
  final String title;
  final int userId;
  final String body;

  Post({required this.id, required this.title, required this.userId, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class PostApp extends StatelessWidget {
  const PostApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class PostProvider extends ChangeNotifier {
  List<Post> _posts = [];
  bool _loading = false;

  List<Post> get posts => _posts;
  bool get loading => _loading;

  Future<void> fetchPosts() async {
    _loading = true;
    notifyListeners();
    try {
      _posts = await PostService.fetchPosts();
    } catch (e) {
      debugPrint(e.toString());
    }
    _loading = false;
    notifyListeners();
  }
}

class PostService {
  static Future<List<Post>> fetchPosts() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PostProvider>(context);
    if (provider.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: ListView.builder(
        itemCount: provider.posts.length,
        itemBuilder: (context, index) {
          final post = provider.posts[index];
          return ListTile(
            title: Text(post.title),
            subtitle: Text('ID: ${post.id}, UserID: ${post.userId}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(post: post)),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => provider.fetchPosts(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Post post;

  const DetailScreen({Key? key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ID: ${post.id}'),
            Text('UserID: ${post.userId}'),
            Text('Body: ${post.body}'),
          ],
        ),
      ),
    );
  }
}
