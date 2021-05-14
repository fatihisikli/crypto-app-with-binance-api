class Crypto{
  final String symbol;
  final String bidPrice;
  final String bidQty;
  final String askPrice;
  final String askQty;

  Crypto({this.symbol, this.bidPrice, this.bidQty, this.askPrice, this.askQty});
  factory Crypto.fromJson(Map<String,dynamic> json){
    return Crypto(
      symbol: json["symbol"],
      bidPrice: json["bidPrice"],
      bidQty: json["bidQty"],
      askPrice: json["askPrice"],
      askQty: json["askQty"],
    );
  }
}
