import 'package:theraphy_physiotherapist_app/data/model/patient.dart';
import 'package:theraphy_physiotherapist_app/data/model/physiotherapist.dart';

class Appointment {
  int id;
  
 
  String scheduledDate;
  String topic;
  String done;
  String diagnosis;

  Appointment(
      {required this.id,
     
      required this.scheduledDate,
      required this.topic,
      required this.done,
      required this.diagnosis});

  Appointment.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
          
            scheduledDate: json['scheduledDate'],
            topic: json['topic'],
            done: json['done'],
            diagnosis: json['diagnosis']);
}
