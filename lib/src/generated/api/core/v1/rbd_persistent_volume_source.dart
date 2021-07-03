import 'package:kubernetes/src/generated/api/core/v1/secret_reference.dart';

/// Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
class RBDPersistentVolumeSource {
  /// The main constructor.
  const RBDPersistentVolumeSource({
    this.fsType,
    required this.image,
    this.keyring,
    required this.monitors,
    this.pool,
    this.readOnly,
    this.secretRef,
    this.user,
  });

  /// Creates a RBDPersistentVolumeSource from JSON data.
  RBDPersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          image: json['image'],
          keyring: json['keyring'],
          monitors: json['monitors'] != null
              ? List<String>.from(json['monitors'])
              : [],
          pool: json['pool'],
          readOnly: json['readOnly'],
          secretRef: json['secretRef'] != null
              ? SecretReference.fromJson(json['secretRef'])
              : null,
          user: json['user'],
        );

  /// Creates a list of RBDPersistentVolumeSource from JSON data.
  static List<RBDPersistentVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => RBDPersistentVolumeSource.fromJson(e)).toList();
  }

  /// Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
  final String? fsType;

  /// The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final String image;

  /// Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final String? keyring;

  /// A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final List<String> monitors;

  /// The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final String? pool;

  /// ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final bool? readOnly;

  /// SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final SecretReference? secretRef;

  /// The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final String? user;
}