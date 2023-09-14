import 'package:assessment/presentation/ui/component/profile/album_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../state_management/albums/albums_cubit.dart';
import '../general/failure_widget.dart';
import '../general/loading_widget.dart';

class AlbumsTabWidget extends StatelessWidget {
  const AlbumsTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumsCubit, AlbumsState>(
      builder: (BuildContext context, AlbumsState state) {
        switch (state.albumsStatus) {
          case AlbumsStatus.initial:
            context.read<AlbumsCubit>().albumsRequested();
            return const LoadingWidget();
          case AlbumsStatus.loading:
            return const LoadingWidget();
          case AlbumsStatus.success:
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.5),
                itemBuilder: (context, index) {
                  return AlbumItemWidget(
                    album: state.albums[index],
                    onTap: (int albumId) {},
                  );
                },
                itemCount: state.albums.length);
          case AlbumsStatus.failure:
            return FailureWidget(
              error: state.error,
              onRetryPressed: () =>
                  context.read<AlbumsCubit>().albumsRequested(),
            );
        }
      },
    );
  }
}
