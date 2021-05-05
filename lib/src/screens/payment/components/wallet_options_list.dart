class PayCard {
  String title;
  String description;
  String image;

  PayCard({this.title, this.description, this.image});
}

List<PayCard> getPaymentOptions() {
  List<PayCard> cards = [];

  cards.add(new PayCard(
      title: "Cash on delivery (CASH/CARD/UPI)",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(new PayCard(
      title: "CREDIT/DEBIT CARD",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(new PayCard(
      title: "PHONE PE/GOOGLE PAY/BHIM UPI",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(new PayCard(
      title: "PAYTM/PAYZJAPP/WALLETS",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));

  cards.add(new PayCard(
      title: "NET BANKING",
      description: "Pay bill using card",
      image: "assets/images/paycard.png"));
  return cards;
}
