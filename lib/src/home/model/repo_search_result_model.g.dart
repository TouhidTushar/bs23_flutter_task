// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_search_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepoSearchResult _$RepoSearchResultFromJson(Map<String, dynamic> json) =>
    RepoSearchResult(
      totalCount: json['total_count'] as int?,
      incompleteResults: json['incomplete_results'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Repo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RepoSearchResultToJson(RepoSearchResult instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
