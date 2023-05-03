import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ventas_record.g.dart';

abstract class VentasRecord
    implements Built<VentasRecord, VentasRecordBuilder> {
  static Serializer<VentasRecord> get serializer => _$ventasRecordSerializer;

  @BuiltValueField(wireName: 'Numero_tarjeta')
  int? get numeroTarjeta;

  @BuiltValueField(wireName: 'Fecha_vigencia')
  DateTime? get fechaVigencia;

  @BuiltValueField(wireName: 'Cvv')
  int? get cvv;

  @BuiltValueField(wireName: 'Numero_cuenta')
  int? get numeroCuenta;

  @BuiltValueField(wireName: 'Id_contenido')
  String? get idContenido;

  @BuiltValueField(wireName: 'Numero_servicio')
  int? get numeroServicio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(VentasRecordBuilder builder) => builder
    ..numeroTarjeta = 0
    ..cvv = 0
    ..numeroCuenta = 0
    ..idContenido = ''
    ..numeroServicio = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ventas')
          : FirebaseFirestore.instance.collectionGroup('ventas');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ventas').doc();

  static Stream<VentasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VentasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VentasRecord._();
  factory VentasRecord([void Function(VentasRecordBuilder) updates]) =
      _$VentasRecord;

  static VentasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVentasRecordData({
  int? numeroTarjeta,
  DateTime? fechaVigencia,
  int? cvv,
  int? numeroCuenta,
  String? idContenido,
  int? numeroServicio,
}) {
  final firestoreData = serializers.toFirestore(
    VentasRecord.serializer,
    VentasRecord(
      (v) => v
        ..numeroTarjeta = numeroTarjeta
        ..fechaVigencia = fechaVigencia
        ..cvv = cvv
        ..numeroCuenta = numeroCuenta
        ..idContenido = idContenido
        ..numeroServicio = numeroServicio,
    ),
  );

  return firestoreData;
}
