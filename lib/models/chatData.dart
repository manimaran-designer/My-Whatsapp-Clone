import 'package:flutter/material.dart';

class Messages {
  final String name;
  final String imageUrl;
  final String message;
  final String statusTime;

  Messages({
    @required this.name,
    @required this.imageUrl,
    @required this.message,
    this.statusTime,
  });

  String get formattedDate => null;
}

List<Messages> sampleData = [
  Messages(
      statusTime: '20 minustes ago',
      name: "Duke Phillips",
      message: "Hey Flutter, You are so amazing !",
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/1.jpg"),
  Messages(
      statusTime: '30 minustes ago',
      name: "Duana Holmes",
      message: "Hey I have hacked whatsapp!",
      imageUrl: "https://randomuser.me/api/portraits/thumb/women/9.jpg"),
  Messages(
      statusTime: '25 minustes ago',
      name: "Sanders",
      message: "Hey I have hacked whatsapp!",
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/4.jpg"),
  Messages(
      statusTime: '10 minustes ago',
      name: "Florencio",
      message: "Hey I have hacked whatsapp!",
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/5.jpg"),
  Messages(
      statusTime: '5 minustes ago',
      name: "Thea",
      message: "Hey Flutter, You are so amazing !",
      imageUrl: "https://randomuser.me/api/portraits/thumb/women/11.jpg"),
  Messages(
      statusTime: '1 minustes ago',
      name: "Tyrina",
      message: "Hey Flutter, You are so amazing !",
      imageUrl: "https://randomuser.me/api/portraits/thumb/women/1.jpg"),
  Messages(
      statusTime: '20 minustes ago',
      name: "Ozzie",
      message: "Hey Flutter, You are so amazing !",
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/9.jpg"),
  Messages(
      statusTime: '44 minustes ago',
      name: "Dolph",
      message: "Hey Flutter, You are so amazing !",
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/10.jpg"),
];
