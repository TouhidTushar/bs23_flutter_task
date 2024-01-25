import 'package:json_annotation/json_annotation.dart';

part 'owner_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Owner {
  const Owner({
    this.login,
    this.avatarUrl,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  final String? login;
  final String? avatarUrl;

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
