import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simollu_restaurant_admin/api/admin_api.dart';
import 'package:simollu_restaurant_admin/model/waiting_user_model.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {

  late List<WaitingUserModel> res = [];

  int _numberOfPeople = 27;


  void _incrementNumberOfPeople() {
    setState(() {
      if(_numberOfPeople < 30) {
        _numberOfPeople++;
      }
    });
  }

  void _decrementNumberOfPeople() {
    setState(() {
      if (_numberOfPeople > 1) {
        _numberOfPeople--;
      }
    });
  }

  getList() async {
    AdminApi adminApi = AdminApi();
    List<WaitingUserModel> r = await adminApi.getWaitingList();

    setState(() {
      res = r;
    });
  }

  postComeInAlarm(String targetUserSeq) async {
    AdminApi adminApi = AdminApi();
    bool r = await adminApi.postSendAlarm(targetUserSeq);
    print(r);
  }

  postWaitingComplete(int waitingSeq) async{
    AdminApi adminApi = AdminApi();
    bool r = await adminApi.postWaitingComplete(waitingSeq);
    print(r);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              color: Color(0xFFFFD200),
              height: 201,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: const EdgeInsets.only(top:50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '동래정 선릉직영점',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 27),),
                    Container(
                      margin: EdgeInsets.only(top:54, left: 50),
                      child: Image.asset("assets/logo.png"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20, left: 30),
              child: const Text('가게 현황',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30),
              child: const Text('현재 인원 / 총 인원',
                style: TextStyle(
                    fontSize: 19,
                  color: Colors.black54
                ),),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: _decrementNumberOfPeople,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                Container(
                  width: 99,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7.5),
                  child: Text(
                    '$_numberOfPeople / 30',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: _incrementNumberOfPeople,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 25, left: 30),
              child: Row(
                children: [
                  const Text('웨이팅 현황',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.replay,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      getList();
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 10, right: 30),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 70,
                      child: Text('웨이팅 번호')),
                  SizedBox(
                      width: 50,
                      child: Text('인원')),
                  SizedBox(width: 80,),
                  SizedBox(width: 80,)
                ],
              ),
            ),
            
            Column(
              children: res.isNotEmpty ?
              res.map((user) {
                return Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 70,
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text('${user.waitingNo}번'))),
                      SizedBox(
                          width: 50,
                          child: Text('${user.waitingPersonCnt}명')),
                      SizedBox(
                        width: 80,
                        height: 35,
                        child: OutlinedButton(
                          onPressed: () async {
                            print('입장 알림 버튼 클릭');
                            // api 연결
                            postComeInAlarm(user.userSeq);
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xFFFFD200),
                            side: const BorderSide(
                              color: Color(0xFFFFD200),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: const Text(
                              '입장 알림',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 12,
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
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 35,
                        child: OutlinedButton(
                          onPressed: () async {
                            print('입장 완료 버튼 클릭');
                            //  api 연결
                            postWaitingComplete(user.waitingSeq);
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xFFFFD200),
                            side: const BorderSide(
                              color: Color(0xFFFFD200),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: const Text(
                              '입장 완료',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 12,
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
                        ),
                      ),
                    ],
                  ),
                );
              }).toList()
                  : [Text('현재 웨이팅이 없습니다.')]
      )
          ],
        ),
      ),
    );
  }
}
