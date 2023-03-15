// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ComponentStatus (and ComponentStatusList) holds the cluster validation info. Deprecated: This API is deprecated in v1.19+.
class ComponentStatus {
  /// Default constructor.
  const ComponentStatus({
    this.apiVersion,
    this.conditions,
    this.kind,
    this.metadata,
  });

  /// Creates a [ComponentStatus] from JSON data.
  factory ComponentStatus.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempConditionsJson = json['conditions'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];

    final tempApiVersion = tempApiVersionJson;
    final tempConditions = tempConditionsJson;
    final tempKind = tempKindJson;
    final tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;

    return ComponentStatus(
      apiVersion: tempApiVersion,
      conditions: tempConditions,
      kind: tempKind,
      metadata: tempMetadata,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// List of component conditions observed.
  final List<ComponentCondition>? conditions;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Converts a [ComponentStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempConditions = conditions;
    final tempKind = kind;
    final tempMetadata = metadata;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    return jsonData;
  }
}
