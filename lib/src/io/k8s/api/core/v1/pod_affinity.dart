// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Pod affinity is a group of inter pod affinity scheduling rules.
class PodAffinity {
  /// Default constructor.
  const PodAffinity({
    this.preferredDuringSchedulingIgnoredDuringExecution,
    this.requiredDuringSchedulingIgnoredDuringExecution,
  });

  /// Creates a [PodAffinity] from JSON data.
  factory PodAffinity.fromJson(Map<String, dynamic> json) {
    final tempPreferredDuringSchedulingIgnoredDuringExecutionJson =
        json['preferredDuringSchedulingIgnoredDuringExecution'];
    final tempRequiredDuringSchedulingIgnoredDuringExecutionJson =
        json['requiredDuringSchedulingIgnoredDuringExecution'];

    final List<WeightedPodAffinityTerm>?
        tempPreferredDuringSchedulingIgnoredDuringExecution =
        tempPreferredDuringSchedulingIgnoredDuringExecutionJson != null
            ? List<dynamic>.from(
                    tempPreferredDuringSchedulingIgnoredDuringExecutionJson)
                .map((e) => WeightedPodAffinityTerm.fromJson(
                    Map<String, dynamic>.from(e)))
                .toList()
            : null;

    final List<PodAffinityTerm>?
        tempRequiredDuringSchedulingIgnoredDuringExecution =
        tempRequiredDuringSchedulingIgnoredDuringExecutionJson != null
            ? List<dynamic>.from(
                    tempRequiredDuringSchedulingIgnoredDuringExecutionJson)
                .map((e) =>
                    PodAffinityTerm.fromJson(Map<String, dynamic>.from(e)))
                .toList()
            : null;

    return PodAffinity(
      preferredDuringSchedulingIgnoredDuringExecution:
          tempPreferredDuringSchedulingIgnoredDuringExecution,
      requiredDuringSchedulingIgnoredDuringExecution:
          tempRequiredDuringSchedulingIgnoredDuringExecution,
    );
  }

  /// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
  final List<WeightedPodAffinityTerm>?
      preferredDuringSchedulingIgnoredDuringExecution;

  /// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
  final List<PodAffinityTerm>? requiredDuringSchedulingIgnoredDuringExecution;

  /// Converts a [PodAffinity] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPreferredDuringSchedulingIgnoredDuringExecution =
        preferredDuringSchedulingIgnoredDuringExecution;
    final tempRequiredDuringSchedulingIgnoredDuringExecution =
        requiredDuringSchedulingIgnoredDuringExecution;

    if (tempPreferredDuringSchedulingIgnoredDuringExecution != null) {
      jsonData['preferredDuringSchedulingIgnoredDuringExecution'] =
          tempPreferredDuringSchedulingIgnoredDuringExecution;
    }

    if (tempRequiredDuringSchedulingIgnoredDuringExecution != null) {
      jsonData['requiredDuringSchedulingIgnoredDuringExecution'] =
          tempRequiredDuringSchedulingIgnoredDuringExecution;
    }

    return jsonData;
  }
}
