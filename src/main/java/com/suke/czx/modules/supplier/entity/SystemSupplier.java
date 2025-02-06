package com.suke.czx.modules.supplier.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonProperty;


/**
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-11-25 16:55:59
 */
@Data
@TableName("system_supplier")
public class SystemSupplier implements Serializable {
    public static final long serialVersionUID = 1L;

    @TableId(type = IdType.ASSIGN_UUID)
    @ApiModelProperty(value = "")
    @JsonProperty(value = "id")
    public String id;

    @ApiModelProperty(value = "供应商名称")
    @JsonProperty(value = "name")
    public String name;

    @ApiModelProperty(value = "供应商编码")
    @JsonProperty(value = "code")
    public String code;

    @ApiModelProperty(value = "联系电话")
    @JsonProperty(value = "telephone")
    public String telephone;


}
