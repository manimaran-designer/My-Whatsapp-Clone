import 'package:flutter/material.dart';
import 'package:my_whatsapp_clone/models/callData.dart';

class CallScreen extends StatefulWidget {
  static const String id = '/call_screen';

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: sampleCallData.length,
          itemBuilder: (context, i) => Column(
            children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black54,
                  backgroundImage: NetworkImage(sampleCallData[i].imageUrl),
                  radius: 25,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      sampleCallData[i].name,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      i % 2 == 0 ? Icons.phone : Icons.videocam,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
                subtitle: Row(
                  children: [
                    i % 2 == 0
                        ? Icon(
                            Icons.call_missed,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.call_missed_outgoing,
                            color: Colors.green,
                          ),
                    Text(sampleCallData[i].time),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
