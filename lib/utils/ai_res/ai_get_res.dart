import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final Dio _dio = Dio();

Future<String> getAiRes(text) async {
  try {
    const url = 'https://api.moonshot.cn/v1/chat/completions';

    const accessToken = "sk-HdkXweCqwoIBSGdYWIQVbJ4zFbtezWV6UYuZRYryb0DR25Ho";
    final data = {
      "model": "moonshot-v1-8k",
      "messages": [
        {
          "role": "system",
          "content":
              "你是 Kimi，由 Moonshot AI 提供的人工智能助手，你更擅长中文和英文的对话。你会为用户提供安全，有帮助，准确的回答。同时，你会拒绝一切涉及恐怖主义，种族歧视，黄色暴力等问题的回答。Moonshot AI 为专有名词，不可翻译成其他语言。"
        },
        {"role": "user", "content": text}
      ],
      "temperature": 0.3
    };
    final options = Options(
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
    );
    final response = await _dio.post(url, data: data, options: options);
    debugPrint("${response.data["choices"][0]["message"]["content"]}");
    return response.data["choices"][0]["message"]["content"];
  } on DioException catch (e) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text('Error: ${e.message}')),
    );
  }
  return '';
}
