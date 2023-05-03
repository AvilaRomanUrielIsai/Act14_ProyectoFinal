// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeriesRecord> _$seriesRecordSerializer =
    new _$SeriesRecordSerializer();

class _$SeriesRecordSerializer implements StructuredSerializer<SeriesRecord> {
  @override
  final Iterable<Type> types = const [SeriesRecord, _$SeriesRecord];
  @override
  final String wireName = 'SeriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SeriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.titulo;
    if (value != null) {
      result
        ..add('Titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.director;
    if (value != null) {
      result
        ..add('Director')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fecha;
    if (value != null) {
      result
        ..add('Fecha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.portada;
    if (value != null) {
      result
        ..add('Portada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.calificacion;
    if (value != null) {
      result
        ..add('Calificacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.temporadas;
    if (value != null) {
      result
        ..add('Temporadas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idSeries;
    if (value != null) {
      result
        ..add('Id_series')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  SeriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Director':
          result.director = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fecha':
          result.fecha = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Portada':
          result.portada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Calificacion':
          result.calificacion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Temporadas':
          result.temporadas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Id_series':
          result.idSeries = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$SeriesRecord extends SeriesRecord {
  @override
  final String? titulo;
  @override
  final String? director;
  @override
  final DateTime? fecha;
  @override
  final String? portada;
  @override
  final String? calificacion;
  @override
  final String? temporadas;
  @override
  final String? idSeries;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SeriesRecord([void Function(SeriesRecordBuilder)? updates]) =>
      (new SeriesRecordBuilder()..update(updates))._build();

  _$SeriesRecord._(
      {this.titulo,
      this.director,
      this.fecha,
      this.portada,
      this.calificacion,
      this.temporadas,
      this.idSeries,
      this.ffRef})
      : super._();

  @override
  SeriesRecord rebuild(void Function(SeriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesRecordBuilder toBuilder() => new SeriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesRecord &&
        titulo == other.titulo &&
        director == other.director &&
        fecha == other.fecha &&
        portada == other.portada &&
        calificacion == other.calificacion &&
        temporadas == other.temporadas &&
        idSeries == other.idSeries &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, director.hashCode);
    _$hash = $jc(_$hash, fecha.hashCode);
    _$hash = $jc(_$hash, portada.hashCode);
    _$hash = $jc(_$hash, calificacion.hashCode);
    _$hash = $jc(_$hash, temporadas.hashCode);
    _$hash = $jc(_$hash, idSeries.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesRecord')
          ..add('titulo', titulo)
          ..add('director', director)
          ..add('fecha', fecha)
          ..add('portada', portada)
          ..add('calificacion', calificacion)
          ..add('temporadas', temporadas)
          ..add('idSeries', idSeries)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SeriesRecordBuilder
    implements Builder<SeriesRecord, SeriesRecordBuilder> {
  _$SeriesRecord? _$v;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _director;
  String? get director => _$this._director;
  set director(String? director) => _$this._director = director;

  DateTime? _fecha;
  DateTime? get fecha => _$this._fecha;
  set fecha(DateTime? fecha) => _$this._fecha = fecha;

  String? _portada;
  String? get portada => _$this._portada;
  set portada(String? portada) => _$this._portada = portada;

  String? _calificacion;
  String? get calificacion => _$this._calificacion;
  set calificacion(String? calificacion) => _$this._calificacion = calificacion;

  String? _temporadas;
  String? get temporadas => _$this._temporadas;
  set temporadas(String? temporadas) => _$this._temporadas = temporadas;

  String? _idSeries;
  String? get idSeries => _$this._idSeries;
  set idSeries(String? idSeries) => _$this._idSeries = idSeries;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SeriesRecordBuilder() {
    SeriesRecord._initializeBuilder(this);
  }

  SeriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _director = $v.director;
      _fecha = $v.fecha;
      _portada = $v.portada;
      _calificacion = $v.calificacion;
      _temporadas = $v.temporadas;
      _idSeries = $v.idSeries;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesRecord;
  }

  @override
  void update(void Function(SeriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesRecord build() => _build();

  _$SeriesRecord _build() {
    final _$result = _$v ??
        new _$SeriesRecord._(
            titulo: titulo,
            director: director,
            fecha: fecha,
            portada: portada,
            calificacion: calificacion,
            temporadas: temporadas,
            idSeries: idSeries,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
