import 'package:flutter/material.dart';

class SearchConditionalDetail extends StatefulWidget {
  @override
  _SearchConditionalDetailState createState() =>
      _SearchConditionalDetailState();
}

class _SearchConditionalDetailState extends State<SearchConditionalDetail> {
  String _type1 = '';
  String _type2 = '';
  bool isCode = true;
  bool _flag = false;
  List<bool> typesFlag = List<bool>.generate(16, (i) => false);

  void _handleCheckbox(bool e, int typeIndex) {
    setState(() {
      _flag = e;
      typesFlag[typeIndex] = e;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文書選択'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: RaisedButton(
                          child: Text("全チェック",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/search_conditional_detail');
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: RaisedButton(
                          child: Text("全クリア",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/search_conditional_detail');
                          },
                        ),
                      ),
                    ],
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('添付文書'),
//                  secondary: new Icon(
//                    Icons.thumb_up,
//                    color: _flag ? Colors.orange[700] : Colors.grey[500],
//                  ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[0],
                    onChanged: (value) => _handleCheckbox(value, 0),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('患者向医薬品ガイド／ワクチン接種を受ける人へのガイド'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[1],
                    onChanged: (value) => _handleCheckbox(value, 1),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('患者向医薬品ガイド／ワクチン接種を受ける人へのガイド'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[2],
                    onChanged: (value) => _handleCheckbox(value, 2),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('インタビューフォーム'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[3],
                    onChanged: (value) => _handleCheckbox(value, 3),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('医薬品リスク管理計画（RMP）'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[4],
                    onChanged: (value) => _handleCheckbox(value, 4),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('改訂指示反映履歴および根拠症例'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[5],
                    onChanged: (value) => _handleCheckbox(value, 5),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('審査報告書／再審査報告書／最適使用推進ガイドライン等'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[6],
                    onChanged: (value) => _handleCheckbox(value, 6),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('くすりのしおり'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[7],
                    onChanged: (value) => _handleCheckbox(value, 7),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('緊急安全性情報／安全性速報'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[8],
                    onChanged: (value) => _handleCheckbox(value, 8),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('医薬品の適正使用等に関するお知らせ'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[9],
                    onChanged: (value) => _handleCheckbox(value, 9),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.blue,
                    title: Text('厚生労働省発表資料（医薬品関連）'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: typesFlag[10],
                    onChanged: (value) => _handleCheckbox(value, 10),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity, // match_parent
                child: RaisedButton(
                  child: Text("検索",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  color: Colors.blue,
//              shape: RoundedRectangleBorder(
//                borderRadius: new BorderRadius.circular(10.0),
//              ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/search_conditional_detail');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
