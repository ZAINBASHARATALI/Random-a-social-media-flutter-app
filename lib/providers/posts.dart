import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ltp/models/postmodel.dart';

class PostsProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  List<PostModel> _postList = [];

  List<PostModel> get getpostListing {
    return [..._postList];
  }

  int get postListLength {
    return _postList.length;
  }

  void addToPostList(PostModel value) {
    _postList.add(value);
    GetStorage().write('postlist', _postList.asMap());
    notifyListeners();
    debugPrint('Notified');
  }

  void removePostfromList(value) {
    _postList.removeAt(value);
    notifyListeners();
  }

  void addCommenttoPost(index, comment) {
    _postList[index].comments.add(comment);
    notifyListeners();
  }

  void addLiketoPost(index, manwholikes) {
    _postList[index].likes.add(manwholikes);
    notifyListeners();
  }
}
