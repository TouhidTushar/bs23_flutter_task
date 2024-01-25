import 'package:json_annotation/json_annotation.dart';

import 'package:bs23_flutter_task/src/home/model/owner_model.dart';

part 'repo_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Repo {
  const Repo({
    this.id,
    this.fullName,
    this.description,
    this.language,
    this.watchers,
    this.pushedAt,
    this.owner,
  });

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);

  final int? id;
  final String? fullName;
  final String? description;
  final String? language;
  final int? watchers;
  final String? pushedAt;
  final Owner? owner;

  Map<String, dynamic> toJson() => _$RepoToJson(this);
}
