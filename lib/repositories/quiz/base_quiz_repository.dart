import 'package:QuizApp/enum/difficulty.dart';
import 'package:QuizApp/models/question_models.dart';

abstract class BaseQuizRepository {
  Future<List<Question>> getQuestions({
    int numQuestions,
    int categoryId,
    Difficulty difficulty,
  });
}
