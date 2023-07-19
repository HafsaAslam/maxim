// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopModel _$StopModelFromJson(Map<String, dynamic> json) => StopModel(
      stopName: json['stopName'] as String,
      stopProducts: (json['stopProducts'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stopConatctNo: json['stopConatctNo'] as String,
      stopAddress: json['stopAddress'] as String,
      stopTotalValue: (json['stopTotalValue'] as num).toDouble(),
      stopTotalquantity: json['stopTotalquantity'] as int,
    );

Map<String, dynamic> _$StopModelToJson(StopModel instance) => <String, dynamic>{
      'stopName': instance.stopName,
      'stopAddress': instance.stopAddress,
      'stopConatctNo': instance.stopConatctNo,
      'stopTotalquantity': instance.stopTotalquantity,
      'stopTotalValue': instance.stopTotalValue,
      'stopProducts': instance.stopProducts,
    };
