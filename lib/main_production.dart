import 'package:provider/provider.dart';
import 'main_common.dart';
import 'package:w6small/data/repositories/songs/song_repository_remote.dart';
import 'data/repositories/songs/song_repository.dart';

/// Configure provider dependencies for dev environement
List<Provider> get providersLocal {
  return [Provider<SongRepository>(create: (context) => SongRepositoryRemote())];
}

void main() {
  mainCommon(providersLocal);
}
