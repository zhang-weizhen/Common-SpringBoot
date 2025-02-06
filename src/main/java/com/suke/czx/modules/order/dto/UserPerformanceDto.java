package com.suke.czx.modules.order.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class UserPerformanceDto {

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    private Long orderNum;

    private Long weight;

    private Long processNum;

    @ApiModelProperty(value = "总金额(包含回金、外发、税金）")
    @JsonProperty(value = "totalAmount")
    private BigDecimal totalAmount;
}
