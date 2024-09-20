import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_question/data/message.dart';

class QuestionSecondState {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final selectIndex = 0.obs;
  final conversations = RxList<Conversation>();
}
