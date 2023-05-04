// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InvestmentModel {
  String? userCount;
  String? days;
  String? image;
  String? volatality;
  String? smallcaseName;
  String? description;
  String? year;
  String? interest;
  String? minAmount;
  InvestmentModel({
    this.userCount,
    this.days,
    this.image,
    this.volatality,
    this.smallcaseName,
    this.description,
    this.year,
    this.interest,
    this.minAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userCount': userCount,
      'days': days,
      'image': image,
      'volatality': volatality,
      'smallcaseName': smallcaseName,
      'description': description,
      'year': year,
      'interest': interest,
      'minAmount': minAmount,
    };
  }

  factory InvestmentModel.fromMap(Map<String, dynamic> map) {
    return InvestmentModel(
      userCount: map['userCount'] != null ? map['userCount'] as String : null,
      days: map['days'] != null ? map['days'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      volatality:
          map['volatality'] != null ? map['volatality'] as String : null,
      smallcaseName:
          map['smallcaseName'] != null ? map['smallcaseName'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      year: map['year'] != null ? map['year'] as String : null,
      interest: map['interest'] != null ? map['interest'] as String : null,
      minAmount: map['minAmount'] != null ? map['minAmount'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory InvestmentModel.fromJson(String source) =>
      InvestmentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'InvestmentModel(userCount: $userCount, days: $days, image: $image, volatality: $volatality, smallcaseName: $smallcaseName, description: $description, year: $year, interest: $interest, minAmount: $minAmount)';
  }
}
