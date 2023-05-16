class Stock {
  String logo; // 로고이미지
  String sb; //Ticker
  String ISNM; //풀네임
  double prc; //종가
  double change; //등락률

  Stock(
      {this.logo = 'stock_default.png',
      required this.sb,
      required this.ISNM,
      required this.prc,
      required this.change});
}

List<Stock> dummyData = [
  Stock(
    sb: 'BII',
    ISNM: 'Louis Land JSC',
    prc: 1200,
    change: 9.09,
  ),
  Stock(
    sb: 'VC7',
    ISNM: 'BGI Group JSC',
    prc: 8600,
    change: 8.86,
  ),
  Stock(
    sb: 'SHS',
    ISNM: 'Saigon - Hanoi SSS',
    prc: 10900,
    change: 0.93,
  ),
  Stock(
    sb: 'PVS',
    ISNM: 'PetroVietnam Teeeee',
    prc: 25800,
    change: 0.39,
  ),
  Stock(
    sb: 'IDJ',
    ISNM: 'IDJ Vietnam Invessss',
    prc: 14400,
    change: 0.00,
  ),
  Stock(
    sb: 'DST',
    ISNM: 'Sao Thang Longggg',
    prc: 4100,
    change: 0.00,
  ),
  Stock(
    sb: 'DDG',
    ISNM: 'Indochine Importt',
    prc: 6000,
    change: -9.09,
  ),
];
