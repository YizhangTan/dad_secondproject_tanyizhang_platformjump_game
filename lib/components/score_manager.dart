import 'package:shared_preferences/shared_preferences.dart';

class ScoreManager {
  static int _score = 0;

  static int get score => _score;

  static Future<void> addScore(int points) async {
    _score += points;
    await _saveScore();
  }

  static Future<void> loadScore() async {
    final prefs = await SharedPreferences.getInstance();
    _score = prefs.getInt('score') ?? 0;
  }

  static Future<void> _saveScore() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('score', _score);
  }
}
