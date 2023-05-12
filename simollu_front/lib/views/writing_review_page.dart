import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:simollu_front/models/reviewModel.dart';
import 'package:simollu_front/viewmodels/PreferenceViewModel.dart';
import 'package:simollu_front/viewmodels/review_view_model.dart';
import 'package:simollu_front/views/my_review_widget.dart';
import 'package:simollu_front/views/review_management_page.dart';
import 'package:simollu_front/views/writing_review_button.dart';

class WritingReviewPage extends StatefulWidget {
  const WritingReviewPage({Key? key}) : super(key: key);

  @override
  State<WritingReviewPage> createState() => _WritingReviewPageState();
}

class _WritingReviewPageState extends State<WritingReviewPage> {
  final reviewViewModel = ReviewMViewModel();
  final preferenceViewModel = PreferenceViewModel();

  List<String> rating = ['아쉬워요', '기다릴만해요'];
  int _selecedRating = -1;
  String _reviewContent = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/dongraejeong.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover, // 이미지가 Container에 꽉 차게 보이도록 설정
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 19),
                child: Text(
                  '동래정 선릉직영점',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    wordSpacing: 0,
                    height: 1.0,
                    shadows: [],
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 19),
                child: Text(
                  '음식은 어떠셨나요?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    wordSpacing: 0,
                    height: 1.0,
                    shadows: [],
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                child: Text(
                  '솔직한 리뷰를 남겨주시면',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    wordSpacing: 0,
                    height: 1.0,
                    shadows: [],
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                child: Text(
                  '포크를 드립니다.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    wordSpacing: 0,
                    height: 1.0,
                    shadows: [],
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 60,
                // margin: const EdgeInsets.only(left: 35.0, right: 35.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List<Widget>.generate(
                        rating.length,
                        (index) => WritingReviewButton(
                              text: rating[index],
                              onPressed: () async {
                                setState(() {
                                  if (_selecedRating != index) {
                                    _selecedRating = index;
                                  } else {
                                    _selecedRating = -1;
                                  }
                                });
                              },
                              isPressed: _selecedRating == index,
                            ))
                    ),
              ),
              Container(
                height: 200,
                margin:
                    EdgeInsets.only(top: 20, left: 19, right: 19, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  onChanged: (String value) {
                    setState(() {
                      _reviewContent = value;
                    });
                  },
                  cursorColor: Colors.grey,
                  maxLength: 100,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    hintText: '음식 맛이나 서비스 만족도에 대해 작성해주세요. (100자 이내)',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                      wordSpacing: 0,
                      height: 1.0,
                      shadows: [],
                      decoration: TextDecoration.none,
                    ),
                    border: InputBorder.none,
                    hintMaxLines: 2,
                  ),
                  maxLines: null, // 여러 줄 입력을 가능하게 함
                  keyboardType: TextInputType.multiline, // 키보드 타입을 멀티라인으로 설정
                  expands: true, // 텍스트 필드가 사용 가능한 최대 공간을 차지하도록 함
                  textAlignVertical: TextAlignVertical.top, // 힌트 텍스트를 위쪽으로 정렬
                  style: TextStyle(fontSize: 16), // 입력 텍스트 스타일 설정
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 9),
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            // 선택된 평가가 있고 리뷰를 한 글자라도 썼을 경우에만 작성 완료 버튼 활성화
            onPressed: _selecedRating != -1 && _reviewContent != '' ? () async {
              final reviewModel = ReviewModel(
                restaurantSeq: 2,
                reviewContent: _reviewContent,
                reviewRating: _selecedRating
              );
              final jsonData = reviewModel.toJson();
              // List<String> preferenceList =
              //     await preferenceViewModel.getPreference().then((result) => result);
              // print('$preferenceList');
              var reviewSeq = await reviewViewModel.postReview(jsonData);
              debugPrint(reviewSeq);
              Future.delayed(Duration.zero, () {
                Navigator.push(
                    context,
                    GetPageRoute(
                      curve: Curves.fastOutSlowIn,
                      page: () => ReviewManagementPage(),
                    )
                );
              });
            } : null,
            style: ElevatedButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                // backgroundColor: Colors.yellow
                backgroundColor: Color(0xFFFFD200)),
            child: const Text('작성 완료',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  wordSpacing: 0,
                  height: 1.0,
                  shadows: [],
                  decoration: TextDecoration.none,
                )),
          ),
        ),
      ),
    );
  }
}
