package com.suke.czx.modules.order.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.suke.czx.modules.order.entity.SystemOrder;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class OrderDto extends SystemOrder {

    @ApiModelProperty(value = "创建人名称")
    @JsonProperty(value = "createByName")
    public String createByName;
}
