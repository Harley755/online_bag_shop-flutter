import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

showSnackBar({
  required isAdded,
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            height: 70.0,
            decoration: BoxDecoration(
              color:
                  isAdded ? const Color(0xFFC72C41) : const Color(0xFF198754),
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Row(
              children: [
                const SizedBox(width: 48.0),
                Expanded(
                  child: Text(
                    isAdded ? 'Product already add !' : 'Product added !',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
              child: SvgPicture.asset('assets/icons/bubbles.svg',
                  height: 48.0,
                  width: 40.0,
                  color: isAdded
                      ? const Color(0xFF801336)
                      : const Color(0xFFFFFFFF)),
            ),
          ),
          Positioned(
            top: -20,
            right: 0,
            child: Container(
              height: 48.0,
              width: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isAdded
                      ? const Color(0xFF801336)
                      : const Color(0xFFFFFFFF)),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/close.svg',
                  width: 17.0,
                  color: isAdded
                      ? const Color(0xFFFFFFFF)
                      : const Color(0xFF198754),
                ),
              ),
            ),
          ),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
  );
}
