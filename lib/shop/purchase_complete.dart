import 'package:andand/shop/product_list.dart';
import 'package:andand/shop/purchase_history.dart';
import 'package:flutter/material.dart';
import '../widget/baseappbar.dart';
import '../widget/bottomNavi.dart';

class PurchaseComplete extends StatelessWidget {
  final String productName;
  final String productPrice;

  PurchaseComplete({
    Key? key,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/marketComplete.png',
                    fit: BoxFit.contain,
                    height: 188,
                  ),
                  SizedBox(height: 40),
                  Text(
                    '구매 완료!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '등록된 전화번호로 보내 드릴게요!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => ShoppingUI()), // 첫 번째 페이지로 이동
                          (Route<dynamic> route) => false, // 이전에 쌓인 모든 페이지들을 제거
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF87BD9D),
                    minimumSize: Size(300, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    '확인',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
