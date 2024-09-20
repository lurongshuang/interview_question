class AppAssets {
  ///资源文件夹
  static const String _basePath = 'assets/img/';

  ///Toast文件夹
  static const String _baseToastIndicators = '${_basePath}toast_indicators/';

  ///json文件夹
  static const String _baseJsonPath = 'assets/json/';

  ///html文件夹
  static const String _baseHtmlPath = 'assets/html/';

  ///警告
  static String warning = '${_baseToastIndicators}warning.svg';

  ///错误
  static String error = '${_baseToastIndicators}error.svg';

  ///成功
  static String success = '${_baseToastIndicators}success.svg';

  ///更新背景图
  static String uploadBg = '${_basePath}ic_upload_bg.png';

  ///关闭按钮
  static String icClose = '${_basePath}ic_close.svg';

  ///关闭按钮
  static String icCloseCA = '${_basePath}ic_close_ca.svg';

  ///启动背景图
  static String icAppLaunchBg = '${_basePath}ic_app_launch_bg.png';

  ///无数据
  static String icEmpty = '${_basePath}ic_empty.svg';

  ///患者数据
  static String patientList = '${_baseJsonPath}patient_list.json';
}
