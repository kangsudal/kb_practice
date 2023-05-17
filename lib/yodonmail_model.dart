class YodonmallThemeModel {
  List<Map<String, dynamic>> list;
  String thm_cd; //테마코드
  String thm_nm; //테마명
  String up_rt; //등락률

  YodonmallThemeModel.fromMap(Map<String, dynamic> map)
      : list = map['list'],
        thm_cd = map['thm_cd'],
        thm_nm = map['thm_nm'],
        up_rt = map['up_rt'];
}

class YodonmallDetailModel {
  String is_cd; //티커
  String is_nm; //종목명
  String now_prc; //현재가
  String up_dwn_r; //등락률

  YodonmallDetailModel.fromMap(Map<String, dynamic> map)
      : is_cd = map['is_cd'],
        is_nm = map['is_nm'],
        now_prc = map['now_prc'],
        up_dwn_r = map['up_dwn_r'];
}
