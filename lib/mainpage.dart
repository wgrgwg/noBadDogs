import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '메인 페이지',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인 페이지'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.yellow,
            child: Column(
              children: <Widget>[
                Image.asset('Image/main.png'), // 메인이미지
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // 검색 기능 구현 해야하나...
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.filter_list),
                      onPressed: () {
                        // 필터 기능 구현 해야하나...
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(''), // 강아지이미지 나중에 firebase로
            title: Text('강아지(3세, 남)'),
            subtitle: Text('1km, 3일전'),
            trailing: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0), // 안쪽 여백 설정
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0), // 모서리 둥글게
                  ),
                  child: Text(
                    '소형견',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
                SizedBox(width: 4.0), // 간격
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0), // 안쪽 여백 설정
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0), // 모서리 둥글게
                  ),
                  child: Text(
                    '물지 않아요',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
                SizedBox(width: 4.0), //간격
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0), // 안쪽 여백 설정
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0), // 모서리 둥글게
                  ),
                  child: Text(
                    '불독',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
                SizedBox(width: 4.0), // 간격

                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // 좋아요 버튼 눌렀을 때의 동작
                  },
                ),
                IconButton(
                  icon: Icon(Icons.comment),
                  onPressed: () {
                    // 댓글 기능 구현
                  },
                ),
              ],
            ),
          ),

          // ... 여기에 추가 강아지 글 목록 추가

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 플로팅 액션 버튼 글 작성으로 넘어가면 될듯
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor: Colors.pink,
          ),
        ]

      ),


    );
  }
}