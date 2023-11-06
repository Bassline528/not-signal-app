// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMessagesHash() => r'440359aa71f33caeb381a6774a2acc7e97a90931';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetMessagesRef = AutoDisposeFutureProviderRef<List<Message>>;

/// See also [getMessages].
@ProviderFor(getMessages)
const getMessagesProvider = GetMessagesFamily();

/// See also [getMessages].
class GetMessagesFamily extends Family<AsyncValue<List<Message>>> {
  /// See also [getMessages].
  const GetMessagesFamily();

  /// See also [getMessages].
  GetMessagesProvider call(
    String toUserId,
  ) {
    return GetMessagesProvider(
      toUserId,
    );
  }

  @override
  GetMessagesProvider getProviderOverride(
    covariant GetMessagesProvider provider,
  ) {
    return call(
      provider.toUserId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMessagesProvider';
}

/// See also [getMessages].
class GetMessagesProvider extends AutoDisposeFutureProvider<List<Message>> {
  /// See also [getMessages].
  GetMessagesProvider(
    this.toUserId,
  ) : super.internal(
          (ref) => getMessages(
            ref,
            toUserId,
          ),
          from: getMessagesProvider,
          name: r'getMessagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMessagesHash,
          dependencies: GetMessagesFamily._dependencies,
          allTransitiveDependencies:
              GetMessagesFamily._allTransitiveDependencies,
        );

  final String toUserId;

  @override
  bool operator ==(Object other) {
    return other is GetMessagesProvider && other.toUserId == toUserId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, toUserId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getAvailableUsersToChatHash() =>
    r'7785222c2823558666fcf9fc964e7816ea6ab560';

/// See also [getAvailableUsersToChat].
@ProviderFor(getAvailableUsersToChat)
final getAvailableUsersToChatProvider =
    AutoDisposeFutureProvider<List<User>>.internal(
  getAvailableUsersToChat,
  name: r'getAvailableUsersToChatProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAvailableUsersToChatHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAvailableUsersToChatRef = AutoDisposeFutureProviderRef<List<User>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
