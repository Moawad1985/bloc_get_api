import 'package:bloc_get_api/blocs/post_cubit.dart';
import 'package:bloc_get_api/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostsCubit,List<PostModel>>(
        builder: ( context, posts) {
          if(posts.isEmpty){
            return Center(
              child: CircularProgressIndicator(),);
          }
          return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index){
            return Card(
              color: Colors.white38,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(posts[index].title.toString(),style: TextStyle(
                    color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16
                  ),),
                   SizedBox(height: 9,),

                   Text(posts[index].body.toString()),
                ],
              ),
            );
          });
        },),
    );
  }
}
