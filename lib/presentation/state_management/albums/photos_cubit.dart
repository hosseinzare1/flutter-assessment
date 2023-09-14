import 'package:assessment/domain/entity/album/photo.dart';
import 'package:assessment/domain/entity/error_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/usecase/albums/get_photos_usecase.dart';
import '../../../util/error_handling/exception_to_error_object.dart';

part 'photos_cubit.freezed.dart';
part 'photos_state.dart';

class PhotosCubit extends Cubit<PhotosState> {
  PhotosCubit({required int albumId})
      : _getPhotosUseCase = GetIt.I<GetPhotosUseCase>(),
        super(
          PhotosState(
            photosStatus: PhotosStatus.initial,
            albumId: albumId,
          ),
        );
  final GetPhotosUseCase _getPhotosUseCase;

  void photosRequested() async {
    emit(state.copyWith(photosStatus: PhotosStatus.loading));
    try {
      var response = await _getPhotosUseCase.call(state.albumId);
      emit(
        state.copyWith(
          photosStatus: PhotosStatus.success,
          photos: response,
        ),
      );
    } on Exception catch (exception) {
      emit(state.copyWith(
        photosStatus: PhotosStatus.failure,
        error: exceptionToErrorEntity(exception),
      ));
    }
  }
}
