class Post {
  int userid;
  int id;
  String title;
  String body;
  Post({this.body, this.id, this.title, this.userid});
  Post.fromjson(Map<String, dynamic> data) {
    userid = data['userid'];
    id = data['id'];
    title = data['title'];
    body = data['body'];
  }
}
