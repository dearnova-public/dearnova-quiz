package nl.dearnova.quiz.api.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class QuestionDto {
    private String question;
    private String answer;
}