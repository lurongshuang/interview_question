import 'package:get/get.dart';
import 'package:interview_question/data/patient_bean.dart';

class QuestionFirstState {
  final listData = RxList<PatientBean>();
  final genderValue = 0.obs;

  List<String> genderList = ["不限", "女", "男"];
}
