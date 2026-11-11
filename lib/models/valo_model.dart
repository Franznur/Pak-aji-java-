// To parse this JSON data, do
//
//     final valo = valoFromJson(jsonString);

import 'dart:convert';

Valo valoFromJson(String str) => Valo.fromJson(json.decode(str));

String valoToJson(Valo data) => json.encode(data.toJson());

class Valo {
    final int status;
    final List<Datum> data;

    Valo({
        required this.status,
        required this.data,
    });

    factory Valo.fromJson(Map<String, dynamic> json) => Valo(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    final String uuid;
    final String displayName;
    final String? description;
    final String developerName;
    final DateTime releaseDate;
    final List<String>? characterTags;
    final String displayIcon;
    final String displayIconSmall;
    final String? bustPortrait;
    final String? fullPortrait;
    final String? fullPortraitV2;
    final String killfeedPortrait;
    final String minimapPortrait;
    final String? homeScreenPromoTileImage;
    final String? background;
    final List<String>? backgroundGradientColors;
    final String assetPath;
    final bool isFullPortraitRightFacing;
    final bool isPlayableCharacter;
    final bool isAvailableForTest;
    final bool isBaseContent;
    final Role? role;
    final RecruitmentData? recruitmentData;
    final List<Ability>? abilities;
    final dynamic voiceLine;

    Datum({
        required this.uuid,
        required this.displayName,
        required this.description,
        required this.developerName,
        required this.releaseDate,
        required this.characterTags,
        required this.displayIcon,
        required this.displayIconSmall,
        required this.bustPortrait,
        required this.fullPortrait,
        required this.fullPortraitV2,
        required this.killfeedPortrait,
        required this.minimapPortrait,
        required this.homeScreenPromoTileImage,
        required this.background,
        required this.backgroundGradientColors,
        required this.assetPath,
        required this.isFullPortraitRightFacing,
        required this.isPlayableCharacter,
        required this.isAvailableForTest,
        required this.isBaseContent,
        required this.role,
        required this.recruitmentData,
        required this.abilities,
        required this.voiceLine,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        developerName: json["developerName"],
        releaseDate: DateTime.parse(json["releaseDate"]),
        characterTags: json["characterTags"] == null ? [] : List<String>.from(json["characterTags"]!.map((x) => x)),
        displayIcon: json["displayIcon"],
        displayIconSmall: json["displayIconSmall"],
        bustPortrait: json["bustPortrait"],
        fullPortrait: json["fullPortrait"],
        fullPortraitV2: json["fullPortraitV2"],
        killfeedPortrait: json["killfeedPortrait"],
        minimapPortrait: json["minimapPortrait"],
        homeScreenPromoTileImage: json["homeScreenPromoTileImage"],
        background: json["background"],
        backgroundGradientColors: json["backgroundGradientColors"] == null ? [] : List<String>.from(json["backgroundGradientColors"]!.map((x) => x)),
        assetPath: json["assetPath"],
        isFullPortraitRightFacing: json["isFullPortraitRightFacing"],
        isPlayableCharacter: json["isPlayableCharacter"],
        isAvailableForTest: json["isAvailableForTest"],
        isBaseContent: json["isBaseContent"],
        role: json["role"] == null ? null : Role.fromJson(json["role"]),
        recruitmentData: json["recruitmentData"] == null ? null : RecruitmentData.fromJson(json["recruitmentData"]),
        abilities: json["abilities"] == null ? [] : List<Ability>.from(json["abilities"]!.map((x) => Ability.fromJson(x))),
        voiceLine: json["voiceLine"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "developerName": developerName,
        "releaseDate": releaseDate.toIso8601String(),
        "characterTags": characterTags == null ? [] : List<dynamic>.from(characterTags!.map((x) => x)),
        "displayIcon": displayIcon,
        "displayIconSmall": displayIconSmall,
        "bustPortrait": bustPortrait,
        "fullPortrait": fullPortrait,
        "fullPortraitV2": fullPortraitV2,
        "killfeedPortrait": killfeedPortrait,
        "minimapPortrait": minimapPortrait,
        "homeScreenPromoTileImage": homeScreenPromoTileImage,
        "background": background,
        "backgroundGradientColors": backgroundGradientColors == null ? [] : List<dynamic>.from(backgroundGradientColors!.map((x) => x)),
        "assetPath": assetPath,
        "isFullPortraitRightFacing": isFullPortraitRightFacing,
        "isPlayableCharacter": isPlayableCharacter,
        "isAvailableForTest": isAvailableForTest,
        "isBaseContent": isBaseContent,
        "role": role?.toJson(),
        "recruitmentData": recruitmentData?.toJson(),
        "abilities": abilities == null ? [] : List<dynamic>.from(abilities!.map((x) => x.toJson())),
        "voiceLine": voiceLine,
    };
}

class Ability {
    final Slot slot;
    final String displayName;
    final String description;
    final String? displayIcon;

    Ability({
        required this.slot,
        required this.displayName,
        required this.description,
        required this.displayIcon,
    });

    factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: slotValues.map[json["slot"]]!,
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
    );

    Map<String, dynamic> toJson() => {
        "slot": slotValues.reverse[slot],
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
    };
}

enum Slot {
    ABILITY1,
    ABILITY2,
    GRENADE,
    PASSIVE,
    ULTIMATE
}

final slotValues = EnumValues({
    "Ability1": Slot.ABILITY1,
    "Ability2": Slot.ABILITY2,
    "Grenade": Slot.GRENADE,
    "Passive": Slot.PASSIVE,
    "Ultimate": Slot.ULTIMATE
});

class RecruitmentData {
    final String counterId;
    final String milestoneId;
    final int milestoneThreshold;
    final bool useLevelVpCostOverride;
    final int levelVpCostOverride;
    final DateTime startDate;
    final DateTime endDate;

    RecruitmentData({
        required this.counterId,
        required this.milestoneId,
        required this.milestoneThreshold,
        required this.useLevelVpCostOverride,
        required this.levelVpCostOverride,
        required this.startDate,
        required this.endDate,
    });

    factory RecruitmentData.fromJson(Map<String, dynamic> json) => RecruitmentData(
        counterId: json["counterId"],
        milestoneId: json["milestoneId"],
        milestoneThreshold: json["milestoneThreshold"],
        useLevelVpCostOverride: json["useLevelVpCostOverride"],
        levelVpCostOverride: json["levelVpCostOverride"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
    );

    Map<String, dynamic> toJson() => {
        "counterId": counterId,
        "milestoneId": milestoneId,
        "milestoneThreshold": milestoneThreshold,
        "useLevelVpCostOverride": useLevelVpCostOverride,
        "levelVpCostOverride": levelVpCostOverride,
        "startDate": startDate.toIso8601String(),
        "endDate": endDate.toIso8601String(),
    };
}

class Role {
    final String uuid;
    final DisplayName displayName;
    final String description;
    final String displayIcon;
    final String assetPath;

    Role({
        required this.uuid,
        required this.displayName,
        required this.description,
        required this.displayIcon,
        required this.assetPath,
    });

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        uuid: json["uuid"],
        displayName: displayNameValues.map[json["displayName"]]!,
        description: json["description"],
        displayIcon: json["displayIcon"],
        assetPath: json["assetPath"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayNameValues.reverse[displayName],
        "description": description,
        "displayIcon": displayIcon,
        "assetPath": assetPath,
    };
}

enum DisplayName {
    CONTROLLER,
    DUELIST,
    INITIATOR,
    SENTINEL
}

final displayNameValues = EnumValues({
    "Controller": DisplayName.CONTROLLER,
    "Duelist": DisplayName.DUELIST,
    "Initiator": DisplayName.INITIATOR,
    "Sentinel": DisplayName.SENTINEL
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
