class FactDescription {
  String imageUrl;
  String description;
  int numComments;

  FactDescription({this.imageUrl, this.description, this.numComments});
}

final List<FactDescription> factCard = [
  FactDescription(
    imageUrl: 'images/bonzai.jpg',
    description: 'Bonzai is a plant that taken from big real tree',
    numComments: 30,
  ),
  FactDescription(
    imageUrl: 'images/burros-tail.jpg',
    description: 'Bonzai is a plant that taken from big real tree',
    numComments: 30,
  ),
  FactDescription(
    imageUrl: 'images/cactus.jpg',
    description: 'Bonzai is a plant that taken from big real tree',
    numComments: 30,
  ),
  FactDescription(
    imageUrl: 'images/lavender.jpg',
    description: 'Bonzai is a plant that taken from big real tree',
    numComments: 30,
  ),
];
