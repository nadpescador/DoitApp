import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

abstract class ISoundProvider {
  void playEndOfRestingAudio();

  void playStartTrainingAudio();

  void playUpBeatTrainingSound();

  void toggleAudioPlayer();
}
