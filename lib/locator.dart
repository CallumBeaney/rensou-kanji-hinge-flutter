import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'dictionary.dart';

typedef Dictionary = Map<String, Map<String, String?>>;

final locator = GetIt.instance;

void setup() {
  // final String language = 'ja';
  locator.registerLazySingleton<DigitalInkRecognizerModelManager>(() => DigitalInkRecognizerModelManager());
  locator.registerLazySingleton<DigitalInkRecognizer>(() => DigitalInkRecognizer(languageCode: 'ja'));
  // locator.registerLazySingleton<Dictionary>(() => dictionary);

  // locator.registerLazySingleton<StreamController<List<String>>>(() => StreamController.broadcast());
}
