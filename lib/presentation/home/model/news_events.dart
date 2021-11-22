import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class NewsEventsModel extends Equatable {
  final String image;
  final String title;
  final String text;
  final String date;

  NewsEventsModel(this.image, this.title, this.text, this.date);

  @override
  List<Object> get props => [image, title, text, date];
}
