// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ventas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VentasRecord> _$ventasRecordSerializer =
    new _$VentasRecordSerializer();

class _$VentasRecordSerializer implements StructuredSerializer<VentasRecord> {
  @override
  final Iterable<Type> types = const [VentasRecord, _$VentasRecord];
  @override
  final String wireName = 'VentasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VentasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.numeroTarjeta;
    if (value != null) {
      result
        ..add('Numero_tarjeta')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fechaVigencia;
    if (value != null) {
      result
        ..add('Fecha_vigencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cvv;
    if (value != null) {
      result
        ..add('Cvv')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numeroCuenta;
    if (value != null) {
      result
        ..add('Numero_cuenta')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.idContenido;
    if (value != null) {
      result
        ..add('Id_contenido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroServicio;
    if (value != null) {
      result
        ..add('Numero_servicio')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  VentasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VentasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Numero_tarjeta':
          result.numeroTarjeta = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Fecha_vigencia':
          result.fechaVigencia = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Cvv':
          result.cvv = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Numero_cuenta':
          result.numeroCuenta = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Id_contenido':
          result.idContenido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Numero_servicio':
          result.numeroServicio = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$VentasRecord extends VentasRecord {
  @override
  final int? numeroTarjeta;
  @override
  final DateTime? fechaVigencia;
  @override
  final int? cvv;
  @override
  final int? numeroCuenta;
  @override
  final String? idContenido;
  @override
  final int? numeroServicio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VentasRecord([void Function(VentasRecordBuilder)? updates]) =>
      (new VentasRecordBuilder()..update(updates))._build();

  _$VentasRecord._(
      {this.numeroTarjeta,
      this.fechaVigencia,
      this.cvv,
      this.numeroCuenta,
      this.idContenido,
      this.numeroServicio,
      this.ffRef})
      : super._();

  @override
  VentasRecord rebuild(void Function(VentasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VentasRecordBuilder toBuilder() => new VentasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VentasRecord &&
        numeroTarjeta == other.numeroTarjeta &&
        fechaVigencia == other.fechaVigencia &&
        cvv == other.cvv &&
        numeroCuenta == other.numeroCuenta &&
        idContenido == other.idContenido &&
        numeroServicio == other.numeroServicio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, numeroTarjeta.hashCode);
    _$hash = $jc(_$hash, fechaVigencia.hashCode);
    _$hash = $jc(_$hash, cvv.hashCode);
    _$hash = $jc(_$hash, numeroCuenta.hashCode);
    _$hash = $jc(_$hash, idContenido.hashCode);
    _$hash = $jc(_$hash, numeroServicio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VentasRecord')
          ..add('numeroTarjeta', numeroTarjeta)
          ..add('fechaVigencia', fechaVigencia)
          ..add('cvv', cvv)
          ..add('numeroCuenta', numeroCuenta)
          ..add('idContenido', idContenido)
          ..add('numeroServicio', numeroServicio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VentasRecordBuilder
    implements Builder<VentasRecord, VentasRecordBuilder> {
  _$VentasRecord? _$v;

  int? _numeroTarjeta;
  int? get numeroTarjeta => _$this._numeroTarjeta;
  set numeroTarjeta(int? numeroTarjeta) =>
      _$this._numeroTarjeta = numeroTarjeta;

  DateTime? _fechaVigencia;
  DateTime? get fechaVigencia => _$this._fechaVigencia;
  set fechaVigencia(DateTime? fechaVigencia) =>
      _$this._fechaVigencia = fechaVigencia;

  int? _cvv;
  int? get cvv => _$this._cvv;
  set cvv(int? cvv) => _$this._cvv = cvv;

  int? _numeroCuenta;
  int? get numeroCuenta => _$this._numeroCuenta;
  set numeroCuenta(int? numeroCuenta) => _$this._numeroCuenta = numeroCuenta;

  String? _idContenido;
  String? get idContenido => _$this._idContenido;
  set idContenido(String? idContenido) => _$this._idContenido = idContenido;

  int? _numeroServicio;
  int? get numeroServicio => _$this._numeroServicio;
  set numeroServicio(int? numeroServicio) =>
      _$this._numeroServicio = numeroServicio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VentasRecordBuilder() {
    VentasRecord._initializeBuilder(this);
  }

  VentasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numeroTarjeta = $v.numeroTarjeta;
      _fechaVigencia = $v.fechaVigencia;
      _cvv = $v.cvv;
      _numeroCuenta = $v.numeroCuenta;
      _idContenido = $v.idContenido;
      _numeroServicio = $v.numeroServicio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VentasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VentasRecord;
  }

  @override
  void update(void Function(VentasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VentasRecord build() => _build();

  _$VentasRecord _build() {
    final _$result = _$v ??
        new _$VentasRecord._(
            numeroTarjeta: numeroTarjeta,
            fechaVigencia: fechaVigencia,
            cvv: cvv,
            numeroCuenta: numeroCuenta,
            idContenido: idContenido,
            numeroServicio: numeroServicio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
