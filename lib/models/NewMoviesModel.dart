class Newmoviesmodel {
  String title;
  double rate;
  String type;
  String img;

  Newmoviesmodel(
      {required this.title,
      required this.rate,
      required this.type,
      required this.img});
}

List<Newmoviesmodel> contents = [
  Newmoviesmodel(
      title: "Captain America",
      rate: 8.5,
      type: "Action/Adventure",
      img: "assets/images/Captain America.jpeg"),
  Newmoviesmodel(
      title: "Dark Knight",
      rate: 9.5,
      type: "Action/Adventure",
      img: "assets/images/Dark Knight.jpeg"),
  Newmoviesmodel(
      title: "Deadp & Wolv",
      rate: 7.5,
      type: "Action/Adventure",
      img: "assets/images/Deadpool & Wolverine.jpeg"),
  Newmoviesmodel(
      title: "Home Alone",
      rate: 9.8,
      type: "Comedy",
      img: "assets/images/Home Alone.jpeg"),
];
