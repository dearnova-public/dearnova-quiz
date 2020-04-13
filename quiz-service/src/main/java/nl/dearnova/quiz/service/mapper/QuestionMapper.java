package nl.dearnova.quiz.service.mapper;

import nl.dearnova.quiz.api.model.QuestionDto;
import nl.dearnova.quiz.model.Question;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface QuestionMapper {

    QuestionDto toQuestionDto(Question question);
}
