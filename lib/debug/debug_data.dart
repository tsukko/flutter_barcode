import 'dart:math' as math;

import '../models/medicine.dart';

List<String> gs1codeList = [
  '(01)14987080100314', // GS1-RSS 販売包装単位	PTP100T アルプラゾラム錠0.8mg
  '(01)04987080902324', // GS1-RSS 調剤包装単位 PTP100T アルプラゾラム錠0.8mg
  '(01)14987080323010', // GS1-RSS 販売包装単位 PTP100T カルボシステイン錠250mg
  '(01)14987080324017', // GS1-RSS 販売包装単位 PTP100T カルボシステイン錠500mg
  '(01)14987080324079', // GS1-RSS 販売包装単位 PTP210T カルボシステイン錠500mg
  '(01)14987080554018', // GS1-RSS 販売包装単位 PTP100T サルポグレラート塩酸塩錠50mg
  '(01)14987080768071', // GS1-RSS 販売包装単位 PTP140Cap タムスロシン塩酸塩カプセル0.1mg
  '(01)14987080023910', // GS1-RSS 販売包装単位 10V ナファモスタット注射用10mg
];

String getRandomGs1Code() {
  final random = math.Random();
  return gs1codeList[random.nextInt(gs1codeList.length)];
}

// 例
List<Medicine> sampleData = List<Medicine>.generate(
    20,
    (i) => Medicine(
        '(01)1498708010031$i',
        'アルプラゾラム $i',
        docData2[i],
        '/PmdaSearch/iyakuDetail/ResultDataSetPDF/780075_1124023F1118_1_04',
        true));

List<String> docData2 = [
  '添付文書',
  '患者向医薬品ガイド／ワクチン接種を受ける人へのガイド',
  'インタビューフォーム',
  '医薬品リスク管理計画（RMP）',
  '改訂指示反映履歴および根拠症例',
  '審査報告書／再審査報告書／最適使用推進ガイドライン等',
  '重篤副作用疾患別対応マニュアル　薬物性肝障害',
  '重篤副作用疾患別対応マニュアル　アナフィラキシー',
  '重篤副作用疾患別対応マニュアル　痙攣・てんかん',
  '重篤副作用疾患別対応マニュアル　新生児薬物離脱症候群',
  'くすりのしおり　コンスタン0.4mg錠',
  'くすりのしおり　コンスタン0.8mg錠',
  '緊急安全性情報／安全性速報',
  '医薬品の適正使用等に関するお知らせ',
  '厚生労働省発表資料（医薬品関連）',
  '医薬品に関する評価中のリスク等の情報',
  '医薬品添付文書改訂相談に基づく添付文書改訂',
  'DSU（医薬品安全対策情報）',
  'PMDA医療安全情報',
  '医療用医薬品問合せ先',
  'てすと１',
  'てすと２',
  'てすと３',
  'てすと４',
  'てすと５',
  'てすと６',
];

List<String> docData = [
  '添付文書',
  '患者向医薬品ガイド／ワクチン接種を受ける人へのガイド',
  'インタビューフォーム',
  '医薬品リスク管理計画（RMP）',
  '改訂指示反映履歴および根拠症例',
  '審査報告書／再審査報告書／最適使用推進ガイドライン等',
  '重篤副作用疾患別対応マニュアル',
  'くすりのしおり',
  '緊急安全性情報／安全性速報',
  '医薬品の適正使用等に関するお知らせ',
  '厚生労働省発表資料（医薬品関連）',
  '医薬品に関する評価中のリスク等の情報',
  '医薬品添付文書改訂相談に基づく添付文書改訂',
  'DSU（医薬品安全対策情報）',
  'PMDA医療安全情報',
  '医療用医薬品問合せ先',
  'てすと１',
  'てすと２',
  'てすと３',
  'てすと４',
  'てすと５',
  'てすと６',
];
