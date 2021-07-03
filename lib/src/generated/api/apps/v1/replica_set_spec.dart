import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';
import 'package:kubernetes/src/generated/api/core/v1/pod_template_spec.dart';

/// ReplicaSetSpec is the specification of a ReplicaSet.
class ReplicaSetSpec {
  /// The main constructor.
  const ReplicaSetSpec({
    this.minReadySeconds,
    this.replicas,
    required this.selector,
    this.template,
  });

  /// Creates a ReplicaSetSpec from JSON data.
  ReplicaSetSpec.fromJson(Map<String, dynamic> json)
      : this(
          minReadySeconds: json['minReadySeconds'],
          replicas: json['replicas'],
          selector: LabelSelector.fromJson(json['selector']),
          template: json['template'] != null
              ? PodTemplateSpec.fromJson(json['template'])
              : null,
        );

  /// Creates a list of ReplicaSetSpec from JSON data.
  static List<ReplicaSetSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ReplicaSetSpec.fromJson(e)).toList();
  }

  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final int? minReadySeconds;

  /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  final int? replicas;

  /// Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final LabelSelector selector;

  /// Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  final PodTemplateSpec? template;
}
