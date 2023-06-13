// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      orderNumber: json['orderNumber'] as String,
      orderStatus: json['orderStatus'] as String,
      dealerId: json['dealerId'] as String,
      asoId: json['asoId'] as String,
      asmId: json['asmId'] as String,
      zmId: json['zmId'] as String,
      operationId: json['operationId'] as String,
      bankName: json['bankName'] as String,
      bankdeposite: (json['bankdeposite'] as num).toDouble(),
      rentAdjusment: (json['rentAdjusment'] as num).toDouble(),
      credit: (json['credit'] as num).toDouble(),
      creditStatus: json['creditStatus'] as String,
      recieptPicture: json['recieptPicture'] as String,
      orderTotalquantity: json['orderTotalquantity'] as int,
      orderTotalValue: (json['orderTotalValue'] as num).toDouble(),
      stop: (json['stop'] as List<dynamic>)
          .map((e) => StopModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'orderNumber': instance.orderNumber,
      'orderStatus': instance.orderStatus,
      'dealerId': instance.dealerId,
      'asoId': instance.asoId,
      'asmId': instance.asmId,
      'zmId': instance.zmId,
      'operationId': instance.operationId,
      'credit': instance.credit,
      'creditStatus': instance.creditStatus,
      'rentAdjusment': instance.rentAdjusment,
      'bankName': instance.bankName,
      'bankdeposite': instance.bankdeposite,
      'recieptPicture': instance.recieptPicture,
      ' orderTotalquantity': instance.orderTotalquantity,
      'orderTotalValue': instance.orderTotalValue,
      'stop': instance.stop,
    };
