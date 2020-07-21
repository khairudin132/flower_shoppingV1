class PromoModel {
  final String title;
  final String imageUrl;
  final String date;
  final int discount;
  PromoModel({this.title, this.imageUrl, this.date, this.discount});
}

final List<PromoModel> promoDescription = [
  PromoModel(
    title: 'Mother\'s Day',
    imageUrl: 'images/lily.jpg',
    date: '21st January',
    discount: 30,
  ),
  PromoModel(
    title: 'Graduation Day',
    imageUrl: 'images/lavender.jpg',
    date: '21st January',
    discount: 30,
  ),
  PromoModel(
    title: 'Father\'s Day',
    imageUrl: 'images/lily.jpg',
    date: '21st January',
    discount: 30,
  ),
];
