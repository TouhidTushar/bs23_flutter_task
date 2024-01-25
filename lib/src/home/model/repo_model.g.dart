// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repo _$RepoFromJson(Map<String, dynamic> json) => Repo(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      description: json['description'] as String?,
      language: json['language'] as String?,
      watchers: json['watchers'] as int?,
      pushedAt: json['pushed_at'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RepoToJson(Repo instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'description': instance.description,
      'language': instance.language,
      'watchers': instance.watchers,
      'pushed_at': instance.pushedAt,
      'owner': instance.owner,
    };
