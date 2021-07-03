/// ResourceRequirements describes the compute resource requirements.
class ResourceRequirements {
  /// The main constructor.
  const ResourceRequirements({
    this.limits,
    this.requests,
  });

  /// Creates a ResourceRequirements from JSON data.
  ResourceRequirements.fromJson(Map<String, dynamic> json)
      : this(
          limits: json['limits'],
          requests: json['requests'],
        );

  /// Creates a list of ResourceRequirements from JSON data.
  static List<ResourceRequirements> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceRequirements.fromJson(e)).toList();
  }

  /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final Object? limits;

  /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final Object? requests;
}