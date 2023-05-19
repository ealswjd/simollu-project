package com.simollu.WaitingService.model.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class WaitingOneResponseDto {

    int waitingTime;
    int waitingTeam;

}