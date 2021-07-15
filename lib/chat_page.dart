import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF075E54),
      title: buildTitle(),
    );
  }

  buildTitle() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          buildAvatar(),
          SizedBox(width: 16),
          Text('ChatPage'),
        ],
      ),
    );
  }

  buildAvatar() {
    String urlImg =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS15qQ_izdQLmtM1-oZKGIEomJLL9QjGgNtQ&usqp=CAU';
    return CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(urlImg),
    );
  }
}
