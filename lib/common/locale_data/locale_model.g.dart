// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocaleModelAdapter extends TypeAdapter<LocaleModel> {
  @override
  final int typeId = 0;

  @override
  LocaleModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocaleModel(
      message: fields[0] as String?,
      refreshToken: fields[1] as String?,
      accessToken: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocaleModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.accessToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocaleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
