
import 'dart:convert';
Scems scemsFromJson(String str) => Scems.fromJson(json.decode(str));
String scemsToJson(Scems data) => json.encode(data.toJson());

class Scems {
    bool? status;
    Result? result;

    Scems({
        this.status,
        this.result,
    });

    factory Scems.fromJson(Map<String, dynamic> json) => Scems(
        status: json["status"],
        result: json["result"] == null ? null : Result.fromJson(json["result"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "result": result?.toJson(),
    };
}

class Result {
    int? currentPage;
    List<Datum>? data;

    Result({
        this.currentPage,
        this.data,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        currentPage: json["current_page"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    String? productionPublicId;
    String? schemeTeam;
    String? schemePublicId;
    String? schemeName;
    String? productionName;
    String? schemeId;
    String? schemeStatus;
    String? adSlot;

    Datum({
        this.productionPublicId,
        this.schemeTeam,
        this.schemePublicId,
        this.schemeName,
        this.productionName,
        this.schemeId,
        this.schemeStatus,
        this.adSlot,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        productionPublicId: json["production_public_id"],
        schemeTeam: json["scheme_team"],
        schemePublicId: json["scheme_public_id"],
        schemeName: json["scheme_name"],
        productionName: json["production_name"],
        schemeId: json["scheme_id"],
        schemeStatus: json["scheme_status"],
        adSlot: json["ad_slot"],
    );

    Map<String, dynamic> toJson() => {
        "production_public_id": productionPublicId,
        "scheme_team": schemeTeam,
        "scheme_public_id": schemePublicId,
        "scheme_name": schemeName,
        "production_name": productionName,
        "scheme_id": schemeId,
        "scheme_status": schemeStatus,
        "ad_slot": adSlot,
    };
}
