package com.suke.czx.modules.order.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
public class ReadingOrderDto {

    @ApiModelProperty(value = "id")
    @JsonProperty(value = "id")
    public String id;
    @ApiModelProperty(value = "创建人id")
    @JsonProperty(value = "createBy")
    public String createBy;
    @ApiModelProperty(value = "创建人名称")
    @JsonProperty(value = "createByName")
    public String createByName;
    @ApiModelProperty(value = "创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "createTime")
    public Date createTime;

    @ApiModelProperty(value = "更新人id")
    @JsonProperty(value = "updateBy")
    public String updateBy;

    @ApiModelProperty(value = "更新时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "updateTime")
    public Date updateTime;
    @ApiModelProperty(value = "客户编码")
    @JsonProperty(value = "customCode")
    public String customCode;

    @ApiModelProperty(value = "客户名称")
    @JsonProperty(value = "customName")
    public String customName;

    @ApiModelProperty(value = "上传图片")
    @JsonProperty(value = "imageAttachment")
    public String imageAttachment;

    @ApiModelProperty(value = "上传图档")
    @JsonProperty(value = "wordAttachment")
    public String wordAttachment;

    @ApiModelProperty(value = "材料名称")
    @JsonProperty(value = "materialName")
    public String materialName;

    @ApiModelProperty(value = "订单状态")
    @JsonProperty(value = "orderStatus")
    public String orderStatus;
    @ApiModelProperty(value = "加工工艺")
    @JsonProperty(value = "processingTechnology")
    public String processingTechnology;

    @ApiModelProperty(value = "加工备注")
    @JsonProperty(value = "remark")
    public String remark;

    @ApiModelProperty(value = "下载人id")
    @JsonProperty(value = "downloader")
    private String downloader;

    @ApiModelProperty(value = "下载人")
    @JsonProperty(value = "downloaderName")
    private String downloaderName;


}
