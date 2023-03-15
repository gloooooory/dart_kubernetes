// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha1;

/// ResourceClaimSchedulingStatus contains information about one particular ResourceClaim with "WaitForFirstConsumer" allocation mode.
class ResourceClaimSchedulingStatus {
  /// Default constructor.
  const ResourceClaimSchedulingStatus({
    this.name,
    this.unsuitableNodes,
  });

  /// Creates a [ResourceClaimSchedulingStatus] from JSON data.
  factory ResourceClaimSchedulingStatus.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempUnsuitableNodesJson = json['unsuitableNodes'];

    final tempName = tempNameJson;
    final tempUnsuitableNodes = tempUnsuitableNodesJson;

    return ResourceClaimSchedulingStatus(
      name: tempName,
      unsuitableNodes: tempUnsuitableNodes,
    );
  }

  /// Name matches the pod.spec.resourceClaims[*].Name field.
  final String? name;

  /// UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
  ///
  /// The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
  final List<String>? unsuitableNodes;

  /// Converts a [ResourceClaimSchedulingStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempUnsuitableNodes = unsuitableNodes;

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempUnsuitableNodes != null) {
      jsonData['unsuitableNodes'] = tempUnsuitableNodes;
    }

    return jsonData;
  }
}
