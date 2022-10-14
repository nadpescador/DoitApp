import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:sound_provider/sound_provider.dart';

Future<void> init() async {
  final getIt = GetIt.instance;

  final documentDirectory = await getApplicationDocumentsDirectory();
  getIt.registerLazySingleton<SoundProvider>(() => SoundProvider(getIt()));
  getIt.registerLazySingleton<AssetsAudioPlayer>(() => AssetsAudioPlayer());
}
