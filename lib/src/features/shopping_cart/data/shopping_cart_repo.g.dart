// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$totalAmountHash() => r'1dc31870bec7911063c9794af9957e639c1c6bd2';

/// See also [totalAmount].
@ProviderFor(totalAmount)
final totalAmountProvider =
    AutoDisposeProvider<(int amount, int total)>.internal(
  totalAmount,
  name: r'totalAmountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$totalAmountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TotalAmountRef = AutoDisposeProviderRef<(int amount, int total)>;
String _$shoppingCartHash() => r'574f46a2fdab2084fef60e86b8efe81d1072f7e2';

/// See also [ShoppingCart].
@ProviderFor(ShoppingCart)
final shoppingCartProvider =
    AutoDisposeNotifierProvider<ShoppingCart, List<CartItem>>.internal(
  ShoppingCart.new,
  name: r'shoppingCartProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$shoppingCartHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ShoppingCart = AutoDisposeNotifier<List<CartItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
