import 'package:flutter/material.dart';

void main() {
  // 最初に表示するWidget
  runApp(AntenApp());
}

class AntenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 右上に表示される"debug"ラベルを消す
      debugShowCheckedModeBanner: false,
      // アプリ名
      title: 'Anten',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Color.fromARGB(255, 241, 246, 236),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // リスト一覧画面を表示
      home: TodoListPage(),
    );
  }
}

// リスト一覧画面用Widget
class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Anten'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              subtitle: Text('From：横山\nTo  ：横山\nDate：2020/11/24'),
              trailing: Icon(Icons.more_vert),
              onTap: () {},
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              subtitle: Text('From：横山\nTo  ：酒井\nDate：2020/11/24'),
              trailing: Icon(Icons.more_vert),
              onTap: () {},
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              subtitle: Text('From：横山\nTo  ：小澤\nDate：2020/11/24'),
              trailing: Icon(Icons.more_vert),
              onTap: () {},
              isThreeLine: true,
            ),
          ),//
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // "push"で新規画面に遷移
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              // 遷移先の画面としてリスト追加画面を指定
              return TodoAddPage();
            }),
          );
        },
        child: Icon(Icons.favorite),
      ),
    );
  }
}

// リスト追加画面用Widget
class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          // ボタンをクリックした時の処理
          onPressed: () {
            // "pop"で前の画面に戻る
            Navigator.of(context).pop();
          },
          child: Text('リスト追加画面（クリックで戻る）'),
        ),
      ),
    );
  }
}