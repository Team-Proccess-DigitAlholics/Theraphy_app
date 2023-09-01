class Treatment{
  int id;
  String title;
  String description;
  int sessionsQuantity;
  int physiotherapistId;
  String photoUrl;

  Treatment({
    required this.id,
    required this.title,
    required this.description,
    required this.sessionsQuantity,
    required this.physiotherapistId,
    required this.photoUrl
  });

    Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'sessionsQuantity': sessionsQuantity,
      'physiotherapist': physiotherapistId,
      'photoUrl': photoUrl,
    };
  }

}