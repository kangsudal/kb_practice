import 'package:flutter/material.dart';
import 'package:stock_ranking/yodonmail_model.dart';

import 'const.dart';

var dummyData = [
  {
    "avr_up_dwn_r": "0.00",
    "bdy_cmpr_up_dwn_r": "0.00",
    "dwn_is_c": "0",
    "list": [
      {
        "bdy_cmpr": "0",
        "bdy_cmpr_ccd": "3",
        "cmpst_rt": "80.68",
        "is_cd": "377300", //티커
        "is_nm": "카카오페이", //종목명
        "now_prc": "55200", //현재가
        "opn_prc_tl_amt": "7398209",
        "per": "135.54",
        "qta_r": "39.81",
        "up_dwn_r": "0.00",

        ///등락률
        "vlm": "0",
      },
      {
        "bdy_cmpr": "0",
        "bdy_cmpr_ccd": "3",
        "cmpst_rt": "80.68",
        "is_cd": "094940",
        "is_nm": "푸른기술",
        "now_prc": "85900",
        "opn_prc_tl_amt": "7398209",
        "per": "135.54",
        "qta_r": "39.81",
        "up_dwn_r": "0.00",
        "vlm": "0",
      },
      {
        "bdy_cmpr": "0",
        "bdy_cmpr_ccd": "3",
        "cmpst_rt": "80.68",
        "is_cd": "063570",
        "is_nm": "한국전자금융",
        "now_prc": "55200",
        "opn_prc_tl_amt": "7398209",
        "per": "135.54",
        "qta_r": "39.81",
        "up_dwn_r": "0.00",
        "vlm": "0",
      },
    ],
    "thm_cd": "0008",

    ///테마코드
    "thm_nm": "화폐/금융자동화기기(디지털화폐 등)", //테마명
    "tlt_is_c": "10",
    "up_is_c": "0",
    "up_rt": "0.00", //등락률
    "vlm_sgrvt": "0.00",
  },
  {
    "avr_up_dwn_r": "0.00",
    "bdy_cmpr_up_dwn_r": "0.00",
    "dwn_is_c": "0",
    "list": [
      {
        "bdy_cmpr": "0",
        "bdy_cmpr_ccd": "3",
        "cmpst_rt": "80.68",
        "is_cd": "034220", //티커
        "is_nm": "LG디스플레이", //종목명
        "now_prc": "55200", //현재가
        "opn_prc_tl_amt": "7398209",
        "per": "135.54",
        "qta_r": "39.81",
        "up_dwn_r": "100.00",

        ///등락률
        "vlm": "0",
      },
      {
        "bdy_cmpr": "0",
        "bdy_cmpr_ccd": "3",
        "cmpst_rt": "80.68",
        "is_cd": "213420",
        "is_nm": "덕산네오룩스",
        "now_prc": "85900",
        "opn_prc_tl_amt": "7398209",
        "per": "135.54",
        "qta_r": "39.81",
        "up_dwn_r": "120.00",
        "vlm": "0",
      },
      {
        "bdy_cmpr": "0",
        "bdy_cmpr_ccd": "3",
        "cmpst_rt": "80.68",
        "is_cd": "317330",
        "is_nm": "덕산테코피아",
        "now_prc": "55200",
        "opn_prc_tl_amt": "7398209",
        "per": "135.54",
        "qta_r": "39.81",
        "up_dwn_r": "80.00",
        "vlm": "0",
      },
    ],
    "thm_cd": "0009",

    ///테마코드
    "thm_nm": "OLED(유기 발광 다이오드)", //테마명
    "tlt_is_c": "10",
    "up_is_c": "0",
    "up_rt": "10.00", //등락률
    "vlm_sgrvt": "0.00",
  },
];

class YodonmallPage extends StatelessWidget {
  const YodonmallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<YodonmallThemeModel> yodonmallThemeModels = dummyData
        .map((mapItem) => YodonmallThemeModel.fromMap(mapItem))
        .toList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '요즘 돈이 몰리는 국내 테마',
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: yodonmallThemeModels.length,
          itemBuilder: (context, idx) {
            return ThemeCard(
              yodonmallThemeModel: yodonmallThemeModels[idx],
            );
          },
        ),
      ),
    );
  }
}

class ThemeCard extends StatelessWidget {
  final YodonmallThemeModel yodonmallThemeModel;

  const ThemeCard({
    Key? key,
    required this.yodonmallThemeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<YodonmallDetailModel> yodonmallDetailModels =
    yodonmallThemeModel.list
        .map((e) => YodonmallDetailModel.fromMap(e))
        .toList();

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: MediaQuery.of(context).size.width,
      // height: 100,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Text(
                  yodonmallThemeModel.thm_nm,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  textAlign: TextAlign.center,
                  '${yodonmallThemeModel.up_rt}%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ...List.generate(
            yodonmallDetailModels.length,
            (index) {
              return buildRow(
                rowNum: (index + 1).toString(),
                imgUrl: 'images/logo/${yodonmallDetailModels[index].is_cd}.png',
                title: yodonmallDetailModels[index].is_nm,
                upDownRate: yodonmallDetailModels[index].up_dwn_r,
              );
            },
          ),
        ],
      ),
    );
  }

  Row buildRow({
    required String rowNum,
    required String imgUrl,
    required String title,
    required String upDownRate,
  }) {
    return Row(
      children: [
        Text(
          rowNum,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(imgUrl),
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Text(
          '$upDownRate%',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
