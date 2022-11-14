package com.ssafy.dokcho2.dto.minigame;

import com.ssafy.dokcho2.domain.minigame.Consonant;
import io.swagger.annotations.ApiModel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ApiModel(value = "ConsonantDto", description = "초성 퀴즈 정보 응답 Dto")
public class ConsonantDto {
    private String question;
    private String hint;
    private String answer;

    public static ConsonantDto from(Consonant entity){
        return ConsonantDto.builder()
                .question(entity.getQuestion())
                .hint(entity.getHint())
                .answer(entity.getAnswer())
                .build();
    }
}