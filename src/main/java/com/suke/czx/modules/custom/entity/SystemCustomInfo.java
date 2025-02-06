package com.suke.czx.modules.custom.entity;

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
 * 客户管理
 *
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-26 00:58:55
 */
@Data
@TableName("system_custom_info")
public class SystemCustomInfo implements Serializable {
    public static final long serialVersionUID = 1L;

    @ApiModelProperty(value = " 地址")
    @JsonProperty(value = "address")
    public String address;

    @ApiModelProperty(value = " 联系人")
    @JsonProperty(value = "contacts")
    public String contacts;

    @ApiModelProperty(value = "")
    @JsonProperty(value = "createBy")
    public String createBy;

    @ApiModelProperty(value = "")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "createTime")
    public Date createTime;

    @ApiModelProperty(value = "客户编码")
    @JsonProperty(value = "customCode")
    public String customCode;

    @ApiModelProperty(value = "客户名称")
    @JsonProperty(value = "customName")
    public String customName;

    @TableId(type = IdType.ASSIGN_UUID)
    @ApiModelProperty(value = "")
    @JsonProperty(value = "id")
    public String id;

    @ApiModelProperty(value = " 电话号码")
    @JsonProperty(value = "telephone")
    public String telephone;

    @ApiModelProperty(value = "")
    @JsonProperty(value = "updateBy")
    public String updateBy;

    @ApiModelProperty(value = "")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "updateTime")
    public Date updateTime;


}
