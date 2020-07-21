class Suggestion {
  String plantName;
  String plantImage;
  int price;
  String plantCategory;
  String starRating;
  int recommended;
  String userImage;
  String userName;
  String userComment;

  Suggestion(
      {this.plantName,
      this.plantImage,
      this.price,
      this.plantCategory,
      this.recommended,
      this.starRating,
      this.userComment,
      this.userImage,
      this.userName});
}

final List<Suggestion> suggestionFlower = [
  Suggestion(
    plantName: 'Burro\'s Tail',
    plantImage: 'images/burros-tail.jpg',
    price: 60,
    plantCategory: 'Succelent',
    starRating: '⭐⭐⭐⭐⭐',
    recommended: 40,
    userImage:
        'https://manofmany.com/wp-content/uploads/2019/06/50-Long-Haircuts-Hairstyle-Tips-for-Men-5.jpg',
    userName: 'Mike Anderson',
    userComment:
        'I love this kind of plant. It is kind and easy to take care of it.',
  ),
  Suggestion(
    plantName: 'Twin Trunk',
    plantImage: 'images/bonzai.jpg',
    price: 60,
    plantCategory: 'Bonzai',
    starRating: '⭐⭐⭐⭐⭐',
    recommended: 40,
    userImage:
        'https://manofmany.com/wp-content/uploads/2019/06/50-Long-Haircuts-Hairstyle-Tips-for-Men-2.jpg',
    userName: 'George Hammer',
    userComment:
        'I love this kind of plant. It is kind and easy to take care of it.',
  ),
  Suggestion(
    plantName: 'Blue Candle',
    plantImage: 'images/cactus.jpg',
    price: 60,
    plantCategory: 'Cactus',
    starRating: '⭐⭐⭐⭐⭐',
    recommended: 40,
    userImage:
        'https://manofmany.com/wp-content/uploads/2019/06/50-Long-Haircuts-Hairstyle-Tips-for-Men-Chris-Hemsworth.jpg',
    userName: 'John Cena',
    userComment:
        'I love this kind of plant. It is kind and easy to take care of it.',
  ),
];
