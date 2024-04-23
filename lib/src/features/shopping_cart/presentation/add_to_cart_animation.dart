import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_booking/src/features/shopping_cart/data/shopping_cart_repo.dart';

class AddToCartAnimation extends ConsumerStatefulWidget {
  const AddToCartAnimation({super.key});

  @override
  ConsumerState<AddToCartAnimation> createState() => _AddToCartAnimationState();
}

class _AddToCartAnimationState extends ConsumerState<AddToCartAnimation> {
  String? posterURL;

  void startAnimation(String? url) {
    setState(() {
      posterURL = url;
    });
  }

  void resetAnimation() {
    setState(() {
      posterURL = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(shoppingCartProvider, (pre, next) {
      startAnimation(next.recentAddedItem?.posterURL);
    });
    return AnimatedAlign(
        onEnd: resetAnimation,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: posterURL == null ? Alignment.center : Alignment.topRight,
        child: AnimatedScale(
            alignment: Alignment.topRight,
            scale: posterURL != null ? 0 : 1,
            duration: const Duration(milliseconds: 500),
            child: posterURL != null
                ? Image.network(
                    posterURL!,
                    width: 150,
                    height: 200,
                  )
                : null));
  }
}
