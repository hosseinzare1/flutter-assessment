import 'package:assessment/domain/usecase/base_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../../data/repository/albums_repository.dart';
import '../../entity/album/album.dart';

class GetAlbumsUseCase extends BaseUseCase<int, List<Album>> {
  GetAlbumsUseCase() : _albumsRepository = GetIt.I<AlbumsRepository>();
  final AlbumsRepository _albumsRepository;

  @override
  Future<List<Album>> call(int params) {
    return _albumsRepository.getAlbums(params);
  }
}
