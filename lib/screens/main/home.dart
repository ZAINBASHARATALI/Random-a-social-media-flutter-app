import 'package:flutter/material.dart';
import 'package:ltp/providers/posts.dart';
import 'package:ltp/widgets/post_widget.dart';
import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostsProvider>(context);
    var postList = postProvider.getpostListing;
    return ListView.builder(
      itemBuilder: ((context, index) {
        int actualindex = postList.length - index - 1;
        return index % 2 == 0
            ? ElasticInLeft(
                duration: const Duration(milliseconds: 600),
                from: 400,
                child: PostWidget(
                    datamodel: postList[actualindex], index: actualindex))
            : ElasticInRight(
                duration: const Duration(milliseconds: 600),
                from: 400,
                child: PostWidget(
                    datamodel: postList[actualindex], index: actualindex));
      }),
      itemCount: postList.length,
    );
  }
}
