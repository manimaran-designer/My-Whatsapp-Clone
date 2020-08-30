import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:my_whatsapp_clone/models/chatData.dart';

class ChatScreen extends StatefulWidget {
  static const String id = '/chat_screen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('hh:mm').format(now);
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: sampleData.length,
          itemBuilder: (context, i) => Column(
            children: [
              Divider(
                height: 0.1,
              ),
              ListTile(
                leading: GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.black54,
                      backgroundImage: NetworkImage(sampleData[i].imageUrl),
                      radius: 25,
                    ),
                    onTap: () {}),
                title: Text(
                  sampleData[i].name,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(sampleData[i].message),
                trailing: Text(formattedDate),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
