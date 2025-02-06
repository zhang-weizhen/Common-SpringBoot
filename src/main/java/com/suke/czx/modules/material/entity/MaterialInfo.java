package com.suke.czx.modules.material.entity;

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
 * 材料管理
 *
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-25 22:36:28
 */
@Data
@TableName("material_info")
public class MaterialInfo implements Serializable {
    public static final long serialVersionUID = 1L;

    @ApiModelProperty(value = " 材料编码")
    @JsonProperty(value = "code")
    public String code;

    @ApiModelProperty(value = "")
    @JsonProperty(value = "createBy")
    public String createBy;

    @ApiModelProperty(value = "")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "createTime")
    public Date createTime;

    @TableId(type = IdType.ASSIGN_UUID)
    @ApiModelProperty(value = "")
    @JsonProperty(value = "id")
    public String id;

    @ApiModelProperty(value = " 材料名称")
    @JsonProperty(value = "name")
    public String name;

    @ApiModelProperty(value = "")
    @JsonProperty(value = "updateBy")
    public String updateBy;

    @ApiModelProperty(value = "")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "updateTime")
    public Date updateTime;


}
