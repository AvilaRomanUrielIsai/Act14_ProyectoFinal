import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'series_record.g.dart';

abstract class SeriesRecord
    implements Built<SeriesRecord, SeriesRecordBuilder> {
  static Serializer<SeriesRecord> get serializer => _$seriesRecordSerializer;

  @BuiltValueField(wireName: 'Titulo')
  String? get titulo;

  @BuiltValueField(wireName: 'Director')
  String? get director;

  @BuiltValueField(wireName: 'Fecha')
  DateTime? get fecha;

  @BuiltValueField(wireName: 'Portada')
  String? get portada;

  @BuiltValueField(wireName: 'Calificacion')
  String? get calificacion;

  @BuiltValueField(wireName: 'Temporadas')
  String? get temporadas;

  @BuiltValueField(wireName: 'Id_series')
  String? get idSeries;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SeriesRecordBuilder builder) => builder
    ..titulo = ''
    ..director = ''
    ..portada = ''
    ..calificacion = ''
    ..temporadas = ''
    ..idSeries = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('series');

  static Stream<SeriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SeriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SeriesRecord._();
  factory SeriesRecord([void Function(SeriesRecordBuilder) updates]) =
      _$SeriesRecord;

  static SeriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSeriesRecordData({
  String? titulo,
  String? director,
  DateTime? fecha,
  String? portada,
  String? calificacion,
  String? temporadas,
  String? idSeries,
}) {
  final firestoreData = serializers.toFirestore(
    SeriesRecord.serializer,
    SeriesRecord(
      (s) => s
        ..titulo = titulo
        ..director = director
        ..fecha = fecha
        ..portada = portada
        ..calificacion = calificacion
        ..temporadas = temporadas
        ..idSeries = idSeries,
    ),
  );

  return firestoreData;
}
