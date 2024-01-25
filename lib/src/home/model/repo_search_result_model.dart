import 'package:json_annotation/json_annotation.dart';

import 'package:bs23_flutter_task/src/home/model/repo_model.dart';

part 'repo_search_result_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RepoSearchResult {
  const RepoSearchResult({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  factory RepoSearchResult.fromJson(Map<String, dynamic> json) =>
      _$RepoSearchResultFromJson(json);

  final int? totalCount;
  final bool? incompleteResults;
  final List<Repo>? items;

  Map<String, dynamic> toJson() => _$RepoSearchResultToJson(this);
}
