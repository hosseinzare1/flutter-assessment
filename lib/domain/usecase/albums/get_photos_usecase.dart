import 'package:assessment/data/repository/albums_repository.dart';
import 'package:assessment/domain/usecase/base_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../entity/album/photo.dart';

class GetPhotosUseCase extends BaseUseCase<int, List<Photo>> {
  GetPhotosUseCase() : _albumsRepository = GetIt.I<AlbumsRepository>();

  final AlbumsRepository _albumsRepository;

  @override
  Future<List<Photo>> call(int params) {
    return _albumsRepository.getPhotos(params);
  }
}
