import 'dart:convert';

List<Question> questionFromJson(String str) {
  List<Question> questions = [];
  var m = Map.from(json.decode(str))
      .map((k, v) => MapEntry<String, Question>(k, Question.fromJson(v)));
  m.forEach((key, value) => questions.add(value));
  return questions;
}

String questionToJson(Map<String, Question> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Question {
  Question({
    required this.categoria,
    this.incorrecta1 = '',
    this.incorrecta2 = '',
    this.incorrecta3 = '',
    required this.pregunta,
    required this.respuesta,
    required this.tipo,
  }){
    opciones=[if(this.incorrecta1!="")this.incorrecta1,if(this.incorrecta2!="")this.incorrecta2,if(this.incorrecta3!="")this.incorrecta3,this.respuesta];
    opciones.shuffle();
  }

  String categoria;
  String incorrecta1;
  String incorrecta2;
  String incorrecta3;
  String pregunta;
  String respuesta;
  List<String> opciones=[];
  String tipo;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        categoria: json["categoria"],
        incorrecta1: (json["incorrecta1"] == null) ? '' : json["incorrecta1"],
        incorrecta2: (json["incorrecta2"] == null ? '' : json["incorrecta2"]),
        incorrecta3: (json["incorrecta3"] == null ? '' : json["incorrecta3"]),
        pregunta: json["pregunta"],
        respuesta: json["respuesta"],
        tipo: json["tipo"],
      );


  Map<String, dynamic> toJson() => {
        "categoria": categoria,
        "incorrecta1": incorrecta1,
        "incorrecta2": incorrecta2,
        "incorrecta3": incorrecta3,
        "pregunta": pregunta,
        "respuesta": respuesta,
        "tipo": tipo,
      };
}
