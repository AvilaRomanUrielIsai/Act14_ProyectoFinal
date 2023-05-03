// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peliculas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PeliculasRecord> _$peliculasRecordSerializer =
    new _$PeliculasRecordSerializer();

class _$PeliculasRecordSerializer
    implements StructuredSerializer<PeliculasRecord> {
  @override
  final Iterable<Type> types = const [PeliculasRecord, _$PeliculasRecord];
  @override
  final String wireName = 'PeliculasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PeliculasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idPeliculas;
    if (value != null) {
      result
        ..add('Id_peliculas')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.duracion;
    if (value != null) {
      result
        ..add('Duracion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  PeliculasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeliculasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Id_peliculas':
          result.idPeliculas = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
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
        case 'Duracion':
          result.duracion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Portada':
          result.portada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Calificacion':
          result.calificacion = serializers.deserialize(value,
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

class _$PeliculasRecord extends PeliculasRecord {
  @override
  final int? idPeliculas;
  @override
  final String? titulo;
  @override
  final String? director;
  @override
  final DateTime? fecha;
  @override
  final String? duracion;
  @override
  final String? portada;
  @override
  final String? calificacion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PeliculasRecord([void Function(PeliculasRecordBuilder)? updates]) =>
      (new PeliculasRecordBuilder()..update(updates))._build();

  _$PeliculasRecord._(
      {this.idPeliculas,
      this.titulo,
      this.director,
      this.fecha,
      this.duracion,
      this.portada,
      this.calificacion,
      this.ffRef})
      : super._();

  @override
  PeliculasRecord rebuild(void Function(PeliculasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeliculasRecordBuilder toBuilder() =>
      new PeliculasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeliculasRecord &&
        idPeliculas == other.idPeliculas &&
        titulo == other.titulo &&
        director == other.director &&
        fecha == other.fecha &&
        duracion == other.duracion &&
        portada == other.portada &&
        calificacion == other.calificacion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idPeliculas.hashCode);
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, director.hashCode);
    _$hash = $jc(_$hash, fecha.hashCode);
    _$hash = $jc(_$hash, duracion.hashCode);
    _$hash = $jc(_$hash, portada.hashCode);
    _$hash = $jc(_$hash, calificacion.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeliculasRecord')
          ..add('idPeliculas', idPeliculas)
          ..add('titulo', titulo)
          ..add('director', director)
          ..add('fecha', fecha)
          ..add('duracion', duracion)
          ..add('portada', portada)
          ..add('calificacion', calificacion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PeliculasRecordBuilder
    implements Builder<PeliculasRecord, PeliculasRecordBuilder> {
  _$PeliculasRecord? _$v;

  int? _idPeliculas;
  int? get idPeliculas => _$this._idPeliculas;
  set idPeliculas(int? idPeliculas) => _$this._idPeliculas = idPeliculas;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _director;
  String? get director => _$this._director;
  set director(String? director) => _$this._director = director;

  DateTime? _fecha;
  DateTime? get fecha => _$this._fecha;
  set fecha(DateTime? fecha) => _$this._fecha = fecha;

  String? _duracion;
  String? get duracion => _$this._duracion;
  set duracion(String? duracion) => _$this._duracion = duracion;

  String? _portada;
  String? get portada => _$this._portada;
  set portada(String? portada) => _$this._portada = portada;

  String? _calificacion;
  String? get calificacion => _$this._calificacion;
  set calificacion(String? calificacion) => _$this._calificacion = calificacion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PeliculasRecordBuilder() {
    PeliculasRecord._initializeBuilder(this);
  }

  PeliculasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idPeliculas = $v.idPeliculas;
      _titulo = $v.titulo;
      _director = $v.director;
      _fecha = $v.fecha;
      _duracion = $v.duracion;
      _portada = $v.portada;
      _calificacion = $v.calificacion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeliculasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeliculasRecord;
  }

  @override
  void update(void Function(PeliculasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeliculasRecord build() => _build();

  _$PeliculasRecord _build() {
    final _$result = _$v ??
        new _$PeliculasRecord._(
            idPeliculas: idPeliculas,
            titulo: titulo,
            director: director,
            fecha: fecha,
            duracion: duracion,
            portada: portada,
            calificacion: calificacion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
