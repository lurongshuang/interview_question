import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // var errorString = UserStoreController.to.loadAccountSessionErrorString;
    var errorString = "asdfasdf";

    return ColoredBox(
        color: Colors.white70,
        child: Center(
            child: GestureDetector(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(errorString,
                          style: TextStyle(fontSize: 28, color: Colors.black),
                          textDirection: TextDirection.ltr),
                      const Text("请点击重试",
                          style: TextStyle(fontSize: 18, color: Colors.black38),
                          textDirection: TextDirection.ltr)
                    ]),
                onTap: () {
                  // UserStoreController.to.initApp();
                })));
  }
}
