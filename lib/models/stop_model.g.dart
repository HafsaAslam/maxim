// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopModel _$StopModelFromJson(Map<String, dynamic> json) => StopModel(
      product: (json['product'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      conatctNo: json['conatctNo'] as String,
      totalquantity: json['totalquantity'] as int,
    );

Map<String, dynamic> _$StopModelToJson(StopModel instance) => <String, dynamic>{
      'name': instance.name,
      'conatctNo': instance.conatctNo,
      'totalquantity': instance.totalquantity,
      'product': instance.product.map((e) => e.toJson()),
    };
