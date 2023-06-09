// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      productName: json['productName'] as String,
      productQuantity: json['productQuantity'] as int,
      productAmounttValue: (json['productAmounttValue'] as num).toDouble(),
      productPrice: (json['productPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'productQuantity': instance.productQuantity,
      'productAmounttValue': instance.productAmounttValue,
    };
