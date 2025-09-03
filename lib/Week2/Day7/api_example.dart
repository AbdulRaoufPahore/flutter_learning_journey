import 'package:flutterlearnplan/const/export.dart';
import 'package:http/http.dart' as http;

class ApiExampleDay7 extends StatefulWidget {
  const ApiExampleDay7({super.key});

  @override
  State<ApiExampleDay7> createState() => _ApiExampleDay7State();
}

class _ApiExampleDay7State extends State<ApiExampleDay7> {
  List posts = [];

  Future<void> fetchPosts() async {
    try {
      final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      );
      if (response.statusCode == 200) {
        setState(() {
          posts = jsonDecode(response.body);
        });
      } else {
        throw Exception("Failed to load posts");
      }
    } catch (e) {
      print("Error: $e");
    }
    initState() {
      super.initState();
      fetchPosts();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Day 7: API Example"),
      body: posts.isEmpty
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
                strokeWidth: 3,
              ),
            )
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(posts[index]['id'].toString()),
                  ),
                  title: Text(posts[index]['title']),
                  subtitle: Text(posts[index]['body']),
                );
              },
            ),
    );
  }
}
