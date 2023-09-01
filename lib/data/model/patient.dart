class Patient{
    int id;
    String firstName;
    String lastName;
    int age;
    String photoUrl;
    String birthdayDate;
    int appointmentQuantity;
    String email;
    int userId;
    
    
  Patient({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.photoUrl,
    required this.birthdayDate,
    required this.appointmentQuantity,
    required this.email,
    required this.userId
  });
  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
      'photoUrl': photoUrl,
      'birthdayDate': birthdayDate,
      'appointmentQuantity': appointmentQuantity,
      'email': email,
      'userId': userId,
    };
  }
}