// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$totalAmountHash() => r'1f471f3f4ffc2b4e8470d19d791f5593cc4c7f0a';

/// See also [totalAmount].
@ProviderFor(totalAmount)
final totalAmountProvider = AutoDisposeProvider<(int, int)>.internal(
  totalAmount,
  name: r'totalAmountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$totalAmountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TotalAmountRef = AutoDisposeProviderRef<(int, int)>;
String _$shoppingCartHash() => r'eb439fecc8ca2a3a2721f4378629c865667a5794';

/// See also [ShoppingCart].
@ProviderFor(ShoppingCart)
final shoppingCartProvider =
    AutoDisposeNotifierProvider<ShoppingCart, ShoppingCartInfo>.internal(
  ShoppingCart.new,
  name: r'shoppingCartProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$shoppingCartHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ShoppingCart = AutoDisposeNotifier<ShoppingCartInfo>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
