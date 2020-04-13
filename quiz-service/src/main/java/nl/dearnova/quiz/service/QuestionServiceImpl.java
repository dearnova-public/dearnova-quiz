package nl.dearnova.quiz.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import nl.dearnova.quiz.api.model.QuestionDto;
import nl.dearnova.quiz.repository.QuestionRepository;
import nl.dearnova.quiz.service.mapper.QuestionMapper;
import org.springframework.stereotype.Service;

import java.util.List;

import static java.util.stream.Collectors.toList;

@Slf4j
@Service
@RequiredArgsConstructor
public class QuestionServiceImpl implements QuestionService {

    private final QuestionMapper questionMapper;

    private final QuestionRepository questionRepository;

    @Override
    public List<QuestionDto> getQuestions() {
        return questionRepository.findAll().stream()
                .map(questionMapper::toQuestionDto)
                .collect(toList());
    }
}
