import 'package:flutter/material.dart';
import 'package:my_whatsapp_clone/models/chatData.dart';

class StatusScreen extends StatefulWidget {
  static const String id = '/status_screen';
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: () {},
              child: Container(
                width: 50,
                child: Stack(
                  children: [
                    ClipOval(
                      child: Image.network(
                        sampleData[7].imageUrl,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            title: Text(
              'My Status',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Tap to add Status'),
            trailing: IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(25, 5, 0, 5),
            color: Colors.grey[200],
            child: Text(
              'Recent Updates',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sampleData.length,
              itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 0.1,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(sampleData[i].imageUrl),
                      radius: 25,
                    ),
                    title: Text(
                      sampleData[i].name,
                    ),
                    subtitle: Text(
                      sampleData[i].statusTime,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
