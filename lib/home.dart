import 'package:andand/uploadConfirm.dart';
import 'package:flutter/material.dart';
import 'widget/bottomNavi.dart';
import 'widget/baseappbar.dart';
import 'inputimg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andand',
      theme: ThemeData(
        //primaryColor: lightColorScheme.primary,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const BaseAppBar(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: screenHeight * 0.4,
              floating: false,
              pinned: false,
              flexibleSpace: SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: screenWidth,
                          height: screenHeight * 0.26,
                          color: const Color(0xFF87BD9D),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(25.0),
                                child: Text(
                                  '  키워드에 어울리는\n 오늘의 사진 한 장을\n      공유해주세요!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.5,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Image.asset(
                                      'assets/mainbear.png',
                                      width: screenWidth * 0.8,
                                      height: screenHeight * 0.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(child: Text("datasssss"),color: Colors.white,height: screenHeight*0.1,)
                      ],
                    ),
                    Positioned(top: 170, left: screenWidth*0.05,
                        child: Container(child: Text("성공일수",
                            style: TextStyle(
                            color: Color(0xFFADADAD),
                            fontSize: 24,
                            ),
                          ),
                          width: screenWidth*0.9, height: screenHeight*0.115,padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            decoration: BoxDecoration(
                            color: const Color(0xFFF9F9F9),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey, // 그림자 색상
                                blurRadius: 5.0, // 그림자 흐림 정도
                                offset: Offset(0, 2), // 그림자 위치 (수평, 수직)
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),

            ),
          ];
        },
        body: Stack(
          children:[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.6,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9F9F9),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // 그림자 색상
                            blurRadius: 5.0, // 그림자 흐림 정도
                            offset: Offset(0, 2), // 그림자 위치 (수평, 수직)
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 22, top: 12, right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '오늘의 키워드',
                                      style: TextStyle(
                                        color: Color(0xFFADADAD),
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      '#웃음',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: Color(0xFF9E9E9E), // 선의 색상 설정
                                  thickness: 1.5, // 선의 두께 설정
                                  height: 15, // 선의 높이 설정
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/camera.png',
                                    width: screenWidth * 0.45,
                                    height: screenHeight * 0.13,
                                  ),
                                ),
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top:0), // 원하는 만큼 top 값을 조절합니다.
                                    child: Text(
                                      '아직 사진이 업로드되지 않았어요 \n사진을 올리러 가볼까요 ?!',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center, // 텍스트를 가운데 정렬합니다.
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        minimumSize: const Size(200.0, 45.0), // 최소 길이 설정
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => InputImg()),
                                        );
                                      },
                                      child: const Text(
                                        '사진 올리기',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavi(
        selectedIndex: 1,
        onItemTapped: (index) {
          print('Selected Index: $index');
        },
      ),
    );
  }
}