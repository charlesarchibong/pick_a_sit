// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_line_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusLineModel _$BusLineModelFromJson(Map<String, dynamic> json) => BusLineModel(
      number: json['number'] as String,
      name: json['name'] as String,
      departure: DateTime.parse(json['departure'] as String),
      gate: json['gate'] as String,
      onTime: json['onTime'] as bool,
    );

Map<String, dynamic> _$BusLineModelToJson(BusLineModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'departure': instance.departure.toIso8601String(),
      'gate': instance.gate,
      'onTime': instance.onTime,
    };
