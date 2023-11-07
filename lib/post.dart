import 'package:flutter/material.dart';
import 'googlemap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'post',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyPostPage(),
    );
  }
}

class MyPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button
          },
        ),
        title: Text('글 쓰기'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('산책 경로를 정해주세요', style: TextStyle(fontSize: 20)),
            IconButton(
              icon: Icon(Icons.map_rounded),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WalkPathPage()),
                  );
                },
            ),
            SizedBox(height: 16),
            Text('산책 예상 시간', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('25분', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text('산책 금액을 입력하세요', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text('12000원', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '본문 입력',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Placeholder(fallbackHeight: 100, fallbackWidth: 100), // 임시 이미지 위젯
                Placeholder(fallbackHeight: 100, fallbackWidth: 100), // 임시 이미지 위젯
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // 등록핸들
                },
                child: Text('등록'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
