// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClientesRecord> _$clientesRecordSerializer =
    new _$ClientesRecordSerializer();

class _$ClientesRecordSerializer
    implements StructuredSerializer<ClientesRecord> {
  @override
  final Iterable<Type> types = const [ClientesRecord, _$ClientesRecord];
  @override
  final String wireName = 'ClientesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClientesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellido;
    if (value != null) {
      result
        ..add('Apellido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.correo;
    if (value != null) {
      result
        ..add('Correo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codigoPostal;
    if (value != null) {
      result
        ..add('Codigo_postal')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pass;
    if (value != null) {
      result
        ..add('Pass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idCliente;
    if (value != null) {
      result
        ..add('Id_cliente')
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
  ClientesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Apellido':
          result.apellido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Correo':
          result.correo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Codigo_postal':
          result.codigoPostal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Pass':
          result.pass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Id_cliente':
          result.idCliente = serializers.deserialize(value,
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

class _$ClientesRecord extends ClientesRecord {
  @override
  final String? nombre;
  @override
  final String? apellido;
  @override
  final String? correo;
  @override
  final String? direccion;
  @override
  final int? codigoPostal;
  @override
  final String? pass;
  @override
  final int? idCliente;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClientesRecord([void Function(ClientesRecordBuilder)? updates]) =>
      (new ClientesRecordBuilder()..update(updates))._build();

  _$ClientesRecord._(
      {this.nombre,
      this.apellido,
      this.correo,
      this.direccion,
      this.codigoPostal,
      this.pass,
      this.idCliente,
      this.ffRef})
      : super._();

  @override
  ClientesRecord rebuild(void Function(ClientesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientesRecordBuilder toBuilder() =>
      new ClientesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientesRecord &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        correo == other.correo &&
        direccion == other.direccion &&
        codigoPostal == other.codigoPostal &&
        pass == other.pass &&
        idCliente == other.idCliente &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, apellido.hashCode);
    _$hash = $jc(_$hash, correo.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, codigoPostal.hashCode);
    _$hash = $jc(_$hash, pass.hashCode);
    _$hash = $jc(_$hash, idCliente.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientesRecord')
          ..add('nombre', nombre)
          ..add('apellido', apellido)
          ..add('correo', correo)
          ..add('direccion', direccion)
          ..add('codigoPostal', codigoPostal)
          ..add('pass', pass)
          ..add('idCliente', idCliente)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClientesRecordBuilder
    implements Builder<ClientesRecord, ClientesRecordBuilder> {
  _$ClientesRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _apellido;
  String? get apellido => _$this._apellido;
  set apellido(String? apellido) => _$this._apellido = apellido;

  String? _correo;
  String? get correo => _$this._correo;
  set correo(String? correo) => _$this._correo = correo;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  int? _codigoPostal;
  int? get codigoPostal => _$this._codigoPostal;
  set codigoPostal(int? codigoPostal) => _$this._codigoPostal = codigoPostal;

  String? _pass;
  String? get pass => _$this._pass;
  set pass(String? pass) => _$this._pass = pass;

  int? _idCliente;
  int? get idCliente => _$this._idCliente;
  set idCliente(int? idCliente) => _$this._idCliente = idCliente;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClientesRecordBuilder() {
    ClientesRecord._initializeBuilder(this);
  }

  ClientesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _apellido = $v.apellido;
      _correo = $v.correo;
      _direccion = $v.direccion;
      _codigoPostal = $v.codigoPostal;
      _pass = $v.pass;
      _idCliente = $v.idCliente;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientesRecord;
  }

  @override
  void update(void Function(ClientesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientesRecord build() => _build();

  _$ClientesRecord _build() {
    final _$result = _$v ??
        new _$ClientesRecord._(
            nombre: nombre,
            apellido: apellido,
            correo: correo,
            direccion: direccion,
            codigoPostal: codigoPostal,
            pass: pass,
            idCliente: idCliente,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
