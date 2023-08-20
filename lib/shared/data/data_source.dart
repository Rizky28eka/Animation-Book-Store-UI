import 'enums.dart';
import 'models/book.dart';

const _descriptionText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

const _books = [
  Book(
    id: '1',
    title: 'Back On Mountain',
    subtitle: 'Secret of mountains',
    description: _descriptionText,
    author: 'Caelum Sinclair',
    starRating: 7.2,
    coverImage: 'assets/images/back_on_mountain-cover.png',
    rawCoverImage: 'assets/images/back_on_mountain-rawcover.png',
    tags: [Tag.recommended, Tag.nature],
    numLikes: 1550,
  ),
  Book(
    id: '2',
    title: 'Eternal Spark',
    subtitle: 'A love that defies time',
    description: _descriptionText,
    author: 'Lila Nightshade',
    starRating: 8,
    coverImage: 'assets/images/eternal_spark-cover.png',
    rawCoverImage: 'assets/images/eternal_spark-rawcover.png',
    tags: [Tag.trending, Tag.novels],
    numLikes: 2359,
  ),
  Book(
    id: '3',
    title: 'Mastering the Angler\'s Craft',
    subtitle: 'A comprehensive guide to fishing',
    description: _descriptionText,
    author: 'A. J. Fishing Guru',
    starRating: 7.8,
    coverImage: 'assets/images/mastering_the_anglers_craft-cover.png',
    rawCoverImage: 'assets/images/mastering_the_anglers_craft-rawcover.png',
    tags: [Tag.nature],
    numLikes: 2187,
  ),
  Book(
    id: '4',
    title: 'Echoes of the Abyss',
    subtitle: 'Unraveling legends in hidden caves',
    description: _descriptionText,
    author: 'C. J. Stonehart',
    starRating: 7,
    coverImage: 'assets/images/echoes_of_the_abyss-cover.png',
    rawCoverImage: 'assets/images/echoes_of_the_abyss-rawcover.png',
    tags: [Tag.trending, Tag.nature],
    numLikes: 2200,
  ),
  Book(
    id: '5',
    title: 'Crimson Veil',
    subtitle: 'Vampires in Victorian London',
    description: _descriptionText,
    author: 'Lucius Darkwood',
    starRating: 8.5,
    coverImage: 'assets/images/crimson_veil-cover.png',
    rawCoverImage: 'assets/images/crimson_veil-rawcover.png',
    tags: [Tag.trending, Tag.novels],
    numLikes: 1770,
  ),
  Book(
    id: '6',
    title: 'Wings of Destiny',
    subtitle: 'Soaring towards fate\'s embrace',
    description: _descriptionText,
    author: 'Aurora Skywing',
    starRating: 5.9,
    coverImage: 'assets/images/wings_of_destiny-cover.png',
    rawCoverImage: 'assets/images/wings_of_destiny-rawcover.png',
    tags: [Tag.novels],
    numLikes: 1001,
  ),
  Book(
    id: '7',
    title: 'Unbounded Ingenuity',
    subtitle: 'Embarking on a journey of innovative ideas',
    description: _descriptionText,
    author: 'A. R. Visionforge',
    starRating: 7.9,
    coverImage: 'assets/images/unbounded_ingenuity-cover.png',
    rawCoverImage: 'assets/images/unbounded_ingenuity-rawcover.png',
    tags: [Tag.other],
    numLikes: 1809,
  ),
  Book(
    id: '8',
    title: 'The Path to Greatness',
    subtitle: 'Discovering your true potential within',
    description: _descriptionText,
    author: 'A. R. Visionforge',
    starRating: 9.5,
    coverImage: 'assets/images/the_path_to_greatness-cover.png',
    rawCoverImage: 'assets/images/the_path_to_greatness-rawcover.png',
    tags: [Tag.other],
    numLikes: 900,
  ),
  Book(
    id: '9',
    title: 'Spectral Isle',
    subtitle: 'Haunting echoes from lost souls',
    description: _descriptionText,
    author: 'Isabella Graves',
    starRating: 9,
    coverImage: 'assets/images/spectral_isle-cover.png',
    rawCoverImage: 'assets/images/spectral_isle-rawcover.png',
    tags: [Tag.novels],
    numLikes: 1902,
  ),
  Book(
    id: '10',
    title: 'Whispers in Twilight',
    subtitle: 'Secrets awaken after sunset',
    description: _descriptionText,
    author: 'R. S. Moonshadow',
    starRating: 8,
    coverImage: 'assets/images/whispers_in_twilight-cover.png',
    rawCoverImage: 'assets/images/whispers_in_twilight-rawcover.png',
    tags: [Tag.recommended, Tag.novels],
    numLikes: 1770,
  ),
];

final Map<Tag, List<Book>> filteredBooks = {
  Tag.recommended: _books
      .where((element) => element.tags.contains(Tag.recommended))
      .toList(),
  Tag.trending:
      _books.where((element) => element.tags.contains(Tag.trending)).toList(),
  Tag.novels:
      _books.where((element) => element.tags.contains(Tag.novels)).toList(),
  Tag.nature:
      _books.where((element) => element.tags.contains(Tag.nature)).toList(),
  Tag.other:
      _books.where((element) => element.tags.contains(Tag.other)).toList(),
};

final List<Book> popularBooks = _books
    .where((element) => element.starRating > 8)
    .toList()
  ..sort((a, b) => b.starRating.compareTo(a.starRating));

final List<Book> mostLikedBooks = List.from(_books)
  ..sort((a, b) => b.numLikes.compareTo(a.numLikes));
