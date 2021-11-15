
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:bloc_get_api/post_model.dart';
import 'dart:convert' as convert;

class DataServices{

  Future<List<PostModel>> getPosts() async {
    List<PostModel> posts = [];
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
if(response.statusCode == 200){
  var data = json.decode(response.body);
  data.map((post) => posts.add(PostModel.fromJson(post))).toList();

  return posts;
  
}else {
  // If the server did not return a 200 OK response,
  // then throw an exception.
  throw Exception('Failed to load posts');
}
  }


}