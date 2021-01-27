import 'dart:convert';

CadastroModel cadastroModelFromMap(String str) => CadastroModel.fromMap(json.decode(str));

String cadastroModelToMap(CadastroModel data) => json.encode(data.toMap());

class CadastroModel {
    CadastroModel({
        this.height,
        this.weight,
    });

    double height;
    double weight;

    CadastroModel copyWith({
        double height,
        double weight,
    }) => 
        CadastroModel(
            height: height ?? this.height,
            weight: weight ?? this.weight,
        );

    factory CadastroModel.fromMap(Map<String, dynamic> json) => CadastroModel(
        height: json["height"].toDouble(),
        weight: json["weight"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "height": height,
        "weight": weight,
    };
}
