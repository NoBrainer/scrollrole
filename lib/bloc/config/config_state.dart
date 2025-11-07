part of 'config_bloc.dart';

enum ConfigStatus { initial, loading, loadedSuccess, loadedFailure }

@immutable
@JsonSerializable(explicitToJson: true)
final class ConfigState extends Equatable {
  final RulesConfig rulesConfig;

  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConfigStatus status;

  const ConfigState({
    required this.rulesConfig,
    this.status = ConfigStatus.initial,
  });

  const ConfigState.initial()
    : this(
        rulesConfig: const RulesConfig.blank(),
        status: ConfigStatus.initial,
      );

  @override
  List<Object> get props => [rulesConfig, status];

  ConfigState copyWith({
    ValueGetter<RulesConfig>? rulesConfig,
    ValueGetter<ConfigStatus>? status,
  }) {
    return ConfigState(
      rulesConfig: rulesConfig != null ? rulesConfig() : this.rulesConfig,
      status: status != null ? status() : this.status,
    );
  }

  factory ConfigState.fromJson(Map<String, dynamic> json) {
    return _$ConfigStateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ConfigStateToJson(this);
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
