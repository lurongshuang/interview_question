import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/data/message.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

typedef OnChangeIndex = void Function(int index);

class RightMenuWidget extends StatefulWidget {
  final int selectIndex;
  final List<Conversation> conversations;
  final OnChangeIndex onChangeIndex;

  const RightMenuWidget(
      {required this.conversations,
      required this.selectIndex,
      required this.onChangeIndex,
      super.key});

  @override
  State<RightMenuWidget> createState() => _RightMenuWidgetState();
}

class _RightMenuWidgetState extends State<RightMenuWidget> {

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200.r,
        color: TCS.white,
        child: SafeArea(
            child: ListView.builder(
                itemCount: widget.conversations.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      widget.onChangeIndex(index);
                    },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 10.r),
                        decoration: BoxDecoration(
                            color: TCS.grayf7f,
                            border: widget.selectIndex == index
                                ? Border.all(width: 1.r, color: TCS.appBlue)
                                : Border.all(
                                    width: 1.r, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: ListTile(
                            title: TU.d14(widget.conversations[index].name))),
                  );
                })));
  }
}
