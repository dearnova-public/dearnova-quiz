package nl.dearnova.quiz.rest;

import lombok.RequiredArgsConstructor;
import nl.dearnova.quiz.api.model.QuestionDto;
import nl.dearnova.quiz.service.QuestionService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/quiz/question")
@RequiredArgsConstructor
public class QuestionController {

    private final QuestionService questionService;

    @GetMapping
    public List<QuestionDto> getQuestions() {
        return questionService.getQuestions();
    }
}
