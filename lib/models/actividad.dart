
class ActividadModel {
    ActividadModel({
        this.activity,
        this.type,
        this.participants,
        this.price,
        this.key,
        this.accessibility,
    });

    String? activity;
    String? type;
    int? participants;
    int? price;
    String? key;
    int? accessibility;

    factory ActividadModel.fromJson(Map<String, dynamic> json) => ActividadModel(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        key: json["key"],
        accessibility: json["accessibility"],
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "key": key,
        "accessibility": accessibility,
    };
}
