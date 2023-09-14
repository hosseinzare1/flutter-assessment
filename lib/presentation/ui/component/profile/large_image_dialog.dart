import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../general/loading_widget.dart';

class LargeImageDialog extends StatelessWidget {
  const LargeImageDialog({super.key, required this.photoUrl});

  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: 300,
        width: 300,
        child: InteractiveViewer(
          minScale: 0.5,
          child: CachedNetworkImage(
            imageUrl: photoUrl,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                const LoadingWidget(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
