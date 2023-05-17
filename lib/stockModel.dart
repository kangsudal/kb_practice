class Stock {
  String logo; // 로고이미지
  String sb; //Ticker
  String ISNM; //풀네임
  int prc; //종가
  double change; //등락률

  Stock({
    required this.logo,
    required this.sb,
    required this.ISNM,
    required this.prc,
    required this.change,
  });

  //map을 받아와 객체 생성
  Stock.fromMap(Map<String, dynamic> map)
      : logo = "https://fileserver.kbsec.com.vn/kbbuddy/logo_tickers_x3_png/${map['sb']}.png",
        sb = map['sb'],
        ISNM = map['ISNM'],
        prc = map['prc'],
        change = map['change'].toDouble();
}

/*
List<Stock> dummyData = [
  Stock.fromMap(
    {
      'sb': 'BII',
      'ISNM': 'Louis Land JSC',
      'prc': 1200,
      'change': 9.09,
    },
  ),
  Stock.fromMap(
    {
      'sb': 'VC7',
      'ISNM': 'BGI Group JSC',
      'prc': 8600,
      'change': 8.86,
    },
  ),
  Stock.fromMap(
    {
      'sb': 'SHS',
      'ISNM': 'Saigon - Hanoi SSS',
      'prc': 10900,
      'change': 0.93,
    },
  ),
  Stock.fromMap(
    {
      'sb': 'PVS',
      'ISNM': 'PetroVietnam Teeeee',
      'prc': 25800,
      'change': 0.39,
    },
  ),
  Stock.fromMap(
    {
      'sb': 'IDJ',
      'ISNM': 'IDJ Vietnam Invessss',
      'prc': 14400,
      'change': 0.00,
    },
  ),
  Stock.fromMap(
    {
      'sb': 'DST',
      'ISNM': 'Sao Thang Longggg',
      'prc': 4100,
      'change': 0.00,
    },
  ),
  Stock.fromMap(
    {
      'sb': 'DDG',
      'ISNM': 'Indochine Importt',
      'prc': 6000,
      'change': -9.09,
    },
  ),
];
*/

List<Map<String, dynamic>> dummyData = [
  {
    'sb': 'BII',
    'ISNM': 'Louis Land JSC',
    'prc': 1200,
    'change': 9.09,
  },
  {
    'sb': 'VC7',
    'ISNM': 'BGI Group JSC',
    'prc': 8600,
    'change': 8.86,
  },
  {
    'sb': 'SHS',
    'ISNM': 'Saigon - Hanoi SSS',
    'prc': 10900,
    'change': 0.93,
  },
  {
    'sb': 'PVS',
    'ISNM': 'PetroVietnam Teeeee',
    'prc': 25800,
    'change': 0.39,
  },
  {
    'sb': 'IDJ',
    'ISNM': 'IDJ Vietnam Invessss',
    'prc': 14400,
    'change': 0.00,
  },
  {
    'sb': 'DST',
    'ISNM': 'Sao Thang Longggg',
    'prc': 4100,
    'change': 0.00,
  },
  {
    'sb': 'DDG',
    'ISNM': 'Indochine Importt',
    'prc': 6000,
    'change': -9.09,
  },
  {
    'sb': '005930',
    'ISNM': '삼성전자',
    'prc': 65300,
    'change': -0.31,
  },
];
