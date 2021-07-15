import 'package:aula_924/chat_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  buildFloatingActionButton() {
    return Padding(
      padding: EdgeInsets.only(right: 8, bottom: 16),
      child: FloatingActionButton(
        child: Icon(CupertinoIcons.text_bubble_fill),
        backgroundColor: Color(0xFF25D366),
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatPage())
          );
        },
      ),
    );
  }

  buildBody() {
    return ListView(
      children: [
        buildListTile(
          nomeContato: 'Contatinho 01',
          urlImg:
              'https://br.web.img2.acsta.net/pictures/19/03/19/17/23/0985270.jpg',
          msg: 'Oi, sumida.. sdds rsrs',
          data: 'Ontem',
        ),
        buildListTile(
          nomeContato: 'Contatinho 02',
          urlImg:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfnf3P2JM7BFE0-im6xl1-u6LqA8IyCKQvjD6Jt4eU9LrwiWK1J2Y9AaTie_-PYUVYjZo&usqp=CAU',
          msg: 'E o açai.. vamos?',
          data: 'Ontem',
        ),
        buildListTile(
          nomeContato: 'Contatinho 03',
          urlImg:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS15qQ_izdQLmtM1-oZKGIEomJLL9QjGgNtQ&usqp=CAU',
          msg: 'Oi, moça.. sdds',
          data: 'Ontem',
        ),
      ],
    );
  }

  ListTile buildListTile(
      {String nomeContato, String urlImg, String msg, String data}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(urlImg),
      ),
      title: Text(
        nomeContato,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(msg),
      trailing: Text(
        data,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      actions: buildAction(),
      backgroundColor: Color(0xFF075E54),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text('WhatsApp'),
      ),
    );
  }

  List<Widget> buildAction() {
    return [
      IconButton(
        icon: Icon(Icons.search, size: 30),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.more_vert, size: 30),
        onPressed: () {},
      ),
    ];
  }
}
