import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black // 색상 변경
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width / 2, size.height); // 중앙 하단에서 시작
    path.lineTo(0, 0); // 왼쪽 상단으로 이동
    path.lineTo(size.width, 0); // 오른쪽 상단으로 이동
    path.close(); // 처음의 점과 연결하여 도형을 완성

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Triangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TrianglePainter(),
    );
  }
}

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
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Column(
              children: <Widget>[
                Image.asset('Images/main.png'), // 메인이미지
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: Row(
                        children: [
                          Text(
                            '대전광역시 유성구 궁동',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4, top: 7, right: 4, bottom: 5),
                              child: Triangle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(  // 가로선 그리기
                  color: Colors.black,  // 가로선 색상 설정
                  height: 20,  // 가로선 높이 설정
                  thickness: 2,  // 가로선 두께 설정
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '키워드로 알맞은 강아지 검색',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Image.asset(
                      'Images/이미지2.png', // 이미지의 경로를 지정해야 합니다.
                      width: 25, // 이미지의 너비 설정
                      height: 25, // 이미지의 높이 설정
                    ),
                  ],
                ),

                Divider(  // 가로선 그리기
                  color: Colors.black,  // 가로선 색상 설정
                  height: 20,  // 가로선 높이 설정
                  thickness: 2,  // 가로선 두께 설정
                ),
              ],
            ),
          ),
          ListTile(
            //   leading: Image.asset(''), // 강아지이미지 나중에 firebase로
            //   title: Text('강아지(3세, 남)'),
            //   subtitle: Text('1km, 3일전'),
            //   trailing: Row(
            //     children: <Widget>[
            //       Container(
            //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0), // 안쪽 여백 설정
            //         decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(10.0), // 모서리 둥글게
            //         ),
            //         child: Text(
            //           '소형견',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 10.0,
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 4.0), // 간격
            //       Container(
            //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0), // 안쪽 여백 설정
            //         decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(10.0), // 모서리 둥글게
            //         ),
            //         child: Text(
            //           '물지 않아요',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 10.0,
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 4.0), //간격
            //       Container(
            //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0), // 안쪽 여백 설정
            //         decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(10.0), // 모서리 둥글게
            //         ),
            //         child: Text(
            //           '불독',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 10.0,
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 4.0), // 간격
            //
            //       IconButton(
            //         icon: Icon(Icons.favorite_border),
            //         onPressed: () {
            //           // 좋아요 버튼 눌렀을 때의 동작
            //         },
            //       ),
            //       IconButton(
            //         icon: Icon(Icons.comment),
            //         onPressed: () {
            //           // 댓글 기능 구현
            //         },
            //       ),
            //     ],
            //   ),
          ),
          // // ... 여기에 추가 강아지 글 목록 추가

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