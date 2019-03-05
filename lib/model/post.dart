class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
Post(
  title: 'SHUAIGE',
  author: 'Alain',
  imageUrl: '',
),
Post(
  title: 'SHUAIGE',
  author: 'Alain',
  imageUrl: '',
),Post(
  title: 'SHUAIGE',
  author: 'Alain',
  imageUrl: 'https://www.baidu.com/img/bd_logo1.png',
),
];