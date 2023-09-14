import 'package:assessment/domain/entity/error_entity.dart';
import 'package:assessment/domain/usecase/albums/get_albums_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entity/album/album.dart';
import '../../../util/error_handling/exception_to_error_object.dart';

part 'albums_cubit.freezed.dart';

part 'albums_state.dart';

class AlbumsCubit extends Cubit<AlbumsState> {
  AlbumsCubit({required int userId})
      : _getAlbumsUseCase = GetIt.I<GetAlbumsUseCase>(),
        super(AlbumsState(albumsStatus: AlbumsStatus.initial, userId: userId));
  final GetAlbumsUseCase _getAlbumsUseCase;

  void albumsRequested() async {
    emit(state.copyWith(albumsStatus: AlbumsStatus.loading));
    try {
      var response = await _getAlbumsUseCase.call(state.userId);
      emit(
          state.copyWith(albumsStatus: AlbumsStatus.success, albums: response));
    } on Exception catch (exception) {
      emit(state.copyWith(
        albumsStatus: AlbumsStatus.failure,
        error: exceptionToErrorEntity(exception),
      ));
    }
  }
}
