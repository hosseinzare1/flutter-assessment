import 'package:assessment/presentation/state_management/albums/photos_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../general/failure_widget.dart';
import '../../general/loading_widget.dart';

class PhotosBottomSheet extends StatelessWidget {
  const PhotosBottomSheet(
      {super.key, required this.albumId, required this.onTap});

  final int albumId;
  final Function(String photoUrl) onTap;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhotosCubit(albumId: albumId),
      child: BlocBuilder<PhotosCubit, PhotosState>(
        builder: (context, state) {
          switch (state.photosStatus) {
            case PhotosStatus.initial:
              context.read<PhotosCubit>().photosRequested();
              return const LoadingWidget();
            case PhotosStatus.loading:
              return const LoadingWidget();
            case PhotosStatus.success:
              return BottomSheet(
                clipBehavior: Clip.antiAlias,
                onClosing: () {},
                builder: (context) {
                  return GridView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.photos.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => onTap(state.photos[index].url),
                        child: CachedNetworkImage(
                          imageUrl: state.photos[index].thumbnailUrl,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  const LoadingWidget(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      );
                    },
                  );
                },
              );
            case PhotosStatus.failure:
              return FailureWidget(
                error: state.error,
                onRetryPressed: () {
                  context.read<PhotosCubit>().photosRequested();
                },
              );
          }
        },
      ),
    );
  }
}
