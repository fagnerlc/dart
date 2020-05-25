class Parentes {
  String mae;
  String pai;

  Parentes({this.mae, this.pai});

    Parentes.fromJson(Map<String, dynamic> json)
      : this(
          mae: json['mae'],
          pai: json['pai'],
        );

  Map<String, dynamic> toJson() {
    return {
      'mae': mae,
      'pai': pai,

    };
  }
}
