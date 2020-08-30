import 'package:flutter/material.dart';

class CallData {
  final String name;
  final String time;
  final String imageUrl;

  CallData({
    @required this.name,
    @required this.time,
    @required this.imageUrl,
  });
}

List<CallData> sampleCallData = [
  CallData(
      name: "Duke Phillips",
      time: '15 mins ago',
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/1.jpg"),
  CallData(
      name: "Duana Holmes",
      time: 'Yesterday',
      imageUrl: "https://randomuser.me/api/portraits/thumb/women/9.jpg"),
  CallData(
      name: "Sanders",
      time: 'Today, 14:30',
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/4.jpg"),
  CallData(
      name: "Florencio",
      time: 'Yesterday',
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/5.jpg"),
  CallData(
      name: "Thea",
      time: '1 day ago',
      imageUrl: "https://randomuser.me/api/portraits/thumb/women/11.jpg"),
  CallData(
      name: "Tyrina",
      time: '48 mins ago',
      imageUrl: "https://randomuser.me/api/portraits/thumb/women/1.jpg"),
  CallData(
      name: "Ozzie",
      time: '50 mins ago',
      imageUrl: "https://randomuser.me/api/portraits/thumb/men/9.jpg"),
];
