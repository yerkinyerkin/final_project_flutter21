import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class EventModel extends Equatable {
  final Color color;
  final String clubName;

  EventModel(this.color, this.clubName);


  @override
  List<Object> get props => [color, clubName];
}
