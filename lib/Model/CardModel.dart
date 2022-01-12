class CardModel {
  final int id;
  final String name;
  final String bankName;
  final String number;
  final String currency;

  final int available;

  CardModel(
      {required this.id,
      required this.name,
      required this.bankName,
      required this.number,
      required this.currency,
      required this.available});
}
