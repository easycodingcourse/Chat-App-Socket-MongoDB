import 'package:chat/helper/preferences_helper.dart';
import 'package:chat/viewmodel/chat/chat_view_model_list.dart';
import 'package:chat/views/shuffle/shuffle.dart';
import 'package:chat/views/signin/signin.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<ChatListState>(ChatListState(), signalsReady: true);
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferencesHelper.shared.userControl(completionHandler: (status) {
    runApp(MaterialApp(home:status ? ShuffleView() : SignInView(),debugShowCheckedModeBanner: false));
  });
}
