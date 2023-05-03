import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'clientes_record.g.dart';

abstract class ClientesRecord
    implements Built<ClientesRecord, ClientesRecordBuilder> {
  static Serializer<ClientesRecord> get serializer =>
      _$clientesRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Apellido')
  String? get apellido;

  @BuiltValueField(wireName: 'Correo')
  String? get correo;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  @BuiltValueField(wireName: 'Codigo_postal')
  int? get codigoPostal;

  @BuiltValueField(wireName: 'Pass')
  String? get pass;

  @BuiltValueField(wireName: 'Id_cliente')
  int? get idCliente;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClientesRecordBuilder builder) => builder
    ..nombre = ''
    ..apellido = ''
    ..correo = ''
    ..direccion = ''
    ..codigoPostal = 0
    ..pass = ''
    ..idCliente = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClientesRecord._();
  factory ClientesRecord([void Function(ClientesRecordBuilder) updates]) =
      _$ClientesRecord;

  static ClientesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClientesRecordData({
  String? nombre,
  String? apellido,
  String? correo,
  String? direccion,
  int? codigoPostal,
  String? pass,
  int? idCliente,
}) {
  final firestoreData = serializers.toFirestore(
    ClientesRecord.serializer,
    ClientesRecord(
      (c) => c
        ..nombre = nombre
        ..apellido = apellido
        ..correo = correo
        ..direccion = direccion
        ..codigoPostal = codigoPostal
        ..pass = pass
        ..idCliente = idCliente,
    ),
  );

  return firestoreData;
}
