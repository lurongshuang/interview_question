import 'dart:convert';
/// id : 0
/// name : "巨女士"
/// city : "河北"
/// gender : "女"

PatientBean patientBeanFromJson(String str) => PatientBean.fromJson(json.decode(str));
String patientBeanToJson(PatientBean data) => json.encode(data.toJson());
class PatientBean {
  PatientBean({
      num? id, 
      String? name, 
      String? city, 
      String? gender,}){
    _id = id;
    _name = name;
    _city = city;
    _gender = gender;
}

  PatientBean.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _city = json['city'];
    _gender = json['gender'];
  }
  num? _id;
  String? _name;
  String? _city;
  String? _gender;
PatientBean copyWith({  num? id,
  String? name,
  String? city,
  String? gender,
}) => PatientBean(  id: id ?? _id,
  name: name ?? _name,
  city: city ?? _city,
  gender: gender ?? _gender,
);
  num? get id => _id;
  String? get name => _name;
  String? get city => _city;
  String? get gender => _gender;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['city'] = _city;
    map['gender'] = _gender;
    return map;
  }

}