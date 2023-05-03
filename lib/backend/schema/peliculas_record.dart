import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'peliculas_record.g.dart';

abstract class PeliculasRecord
    implements Built<PeliculasRecord, PeliculasRecordBuilder> {
  static Serializer<PeliculasRecord> get serializer =>
      _$peliculasRecordSerializer;

  @BuiltValueField(wireName: 'Id_peliculas')
  int? get idPeliculas;

  @BuiltValueField(wireName: 'Titulo')
  String? get titulo;

  @BuiltValueField(wireName: 'Director')
  String? get director;

  @BuiltValueField(wireName: 'Fecha')
  DateTime? get fecha;

  @BuiltValueField(wireName: 'Duracion')
  String? get duracion;

  @BuiltValueField(wireName: 'Portada')
  String? get portada;

  @BuiltValueField(wireName: 'Calificacion')
  String? get calificacion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PeliculasRecordBuilder builder) => builder
    ..idPeliculas = 0
    ..titulo = ''
    ..director = ''
    ..duracion = ''
    ..portada = ''
    ..calificacion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('peliculas');

  static Stream<PeliculasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PeliculasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PeliculasRecord._();
  factory PeliculasRecord([void Function(PeliculasRecordBuilder) updates]) =
      _$PeliculasRecord;

  static PeliculasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPeliculasRecordData({
  int? idPeliculas,
  String? titulo,
  String? director,
  DateTime? fecha,
  String? duracion,
  String? portada,
  String? calificacion,
}) {
  final firestoreData = serializers.toFirestore(
    PeliculasRecord.serializer,
    PeliculasRecord(
      (p) => p
        ..idPeliculas = idPeliculas
        ..titulo = titulo
        ..director = director
        ..fecha = fecha
        ..duracion = duracion
        ..portada = portada
        ..calificacion = calificacion,
    ),
  );

  return firestoreData;
}
