// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      priority: json['priority'] as int,
      isComplete: json['isComplete'] as bool,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'priority': instance.priority,
      'isComplete': instance.isComplete,
    };
