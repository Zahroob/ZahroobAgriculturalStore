import 'package:flutter/material.dart';

class HeartIconWidget extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onChanged;

  const HeartIconWidget({
    super.key,
    this.initialValue = false,
    this.onChanged,
  });

  @override
  State<HeartIconWidget> createState() => _HeartIconWidgetState();
}

class _HeartIconWidgetState extends State<HeartIconWidget> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.initialValue;
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
    widget.onChanged?.call(isFavorite);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleFavorite,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : const Color(0xFF156651),
        size: 24,
      ),
    );
  }
}
