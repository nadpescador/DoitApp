// ignore: import_of_legacy_library_into_null_safe
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:sound_provider/i_sound_provider.dart';

class SoundProvider extends ISoundProvider {
  SoundProvider(this.assetsAudioPlayer);

  final AssetsAudioPlayer assetsAudioPlayer;

  @override
  void playEndOfRestingAudio() {
    assetsAudioPlayer.open(Audio("assets/sounds/end-of-resting.mp3"));
    assetsAudioPlayer.play();
  }

  @override
  void playStartTrainingAudio() {
    assetsAudioPlayer.open(Audio("assets/sounds/training-start.mp3"));
    assetsAudioPlayer.play();
  }

  @override
  void playUpBeatTrainingSound() {
    assetsAudioPlayer.open(Audio("assets/sounds/upbeat-training-sound.mp3"));
    assetsAudioPlayer.play();
  }

  @override
  void toggleAudioPlayer() {
    assetsAudioPlayer.playOrPause();
  }
}
