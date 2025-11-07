part of 'config_bloc.dart';

sealed class ConfigEvent extends Equatable {
  const ConfigEvent();

  @override
  List<Object> get props => [];
}

final class LoadDefaultConfigRequested extends ConfigEvent {}

final class ForceSave extends ConfigEvent {}

final class ForceReset extends ConfigEvent {}

final class ImportFile extends ConfigEvent {
  final String content;

  const ImportFile(this.content);

  @override
  List<Object> get props => [content];
}
