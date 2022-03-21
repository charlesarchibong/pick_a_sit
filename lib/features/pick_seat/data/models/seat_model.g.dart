// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatModel _$SeatModelFromJson(Map<String, dynamic> json) => SeatModel(
      number: json['number'] as int,
      price: (json['price'] as num).toDouble(),
      busLine: json['busLine'] as String,
      userModel: _userModelFromJson(json['user'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$SeatModelToJson(SeatModel instance) => <String, dynamic>{
      'number': instance.number,
      'busLine': instance.busLine,
      'price': instance.price,
      'user': _userModelToJson(instance.userModel),
    };
