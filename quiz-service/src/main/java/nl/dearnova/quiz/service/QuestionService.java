package nl.dearnova.quiz.service;

import nl.dearnova.quiz.api.model.QuestionDto;

import java.util.List;

public interface QuestionService {

    List<QuestionDto> getQuestions();
}
