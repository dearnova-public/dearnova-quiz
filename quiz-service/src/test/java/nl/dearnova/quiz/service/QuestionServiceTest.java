package nl.dearnova.quiz.service;

import nl.dearnova.quiz.api.model.QuestionDto;
import nl.dearnova.quiz.model.Question;
import nl.dearnova.quiz.repository.QuestionRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.hasSize;
import static org.mockito.Mockito.when;

@SpringBootTest
public class QuestionServiceTest {

    @MockBean
    private QuestionRepository questionRepository;

    @Autowired
    private QuestionService questionService;

    @BeforeEach
    void beforeEach() {
        List<Question> questions = Arrays.asList(
                Question.builder().question("Question A").answer("Answer A").build(),
                Question.builder().question("Question B").answer("Answer B").build(),
                Question.builder().question("Question C").answer("Answer C").build()
        );

        when(questionRepository.findAll()).thenReturn(questions);
    }

    @Test
    void testgetQuestions() {
        // When
        List<QuestionDto> results = questionService.getQuestions();

        // Then
        assertThat(results, hasSize(3));
    }
}
