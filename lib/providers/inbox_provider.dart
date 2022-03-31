import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class InboxProvider with ChangeNotifier {
  List<dynamic> inboxMsgs = GetStorage().read('inboxmsgs') ?? [];

  List<String> get getInboxList {
    return [...inboxMsgs];
  }

  void addtoInboxList(newInboxmsg) {
    inboxMsgs.add(newInboxmsg);
    GetStorage().write('inboxmsgs', inboxMsgs);
    notifyListeners();
  }
}
