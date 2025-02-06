package com.suke.czx.modules.order.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.math.BigDecimal;


/**
 * 订单管理
 *
 * @author zwz
 * @email 602459150@qq.com
 * @date 2024-10-26 14:22:27
 */
@Data
@TableName("system_order")
public class SystemOrder implements Serializable {
    public static final long serialVersionUID = 1L;

    @TableId(type = IdType.INPUT)
    @ApiModelProperty(value = "id")
    @JsonProperty(value = "id")
    public String id;

    @ApiModelProperty(value = "创建人")
    @JsonProperty(value = "createBy")
    public String createBy;

    @ApiModelProperty(value = "创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "createTime")
    public Date createTime;

    @ApiModelProperty(value = "更新人")
    @JsonProperty(value = "updateBy")
    public String updateBy;

    @ApiModelProperty(value = "更新时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "updateTime")
    public Date updateTime;

    @ApiModelProperty(value = "快递费实付金额")
    @JsonProperty(value = "actualExpressFee")
    public BigDecimal actualExpressFee;

    @ApiModelProperty(value = "车费实付金额")
    @JsonProperty(value = "actualFare")
    public BigDecimal actualFare;

    @ApiModelProperty(value = "外发付款实付金额")
    @JsonProperty(value = "actualOutgoingPayment")
    public BigDecimal actualOutgoingPayment;

    @ApiModelProperty(value = "回金实付金额")
    @JsonProperty(value = "actualRepayment")
    public BigDecimal actualRepayment;

    @ApiModelProperty(value = " 地址")
    @JsonProperty(value = "address")
    public String address;

    @ApiModelProperty(value = "预付金额")
    @JsonProperty(value = "advanceAmount")
    public BigDecimal advanceAmount;

    @ApiModelProperty(value = "预付实收金额")
    @JsonProperty(value = "advanceReceivedAmount")
    public BigDecimal advanceReceivedAmount;

    @ApiModelProperty(value = " 联系人")
    @JsonProperty(value = "contacts")
    public String contacts;

    @ApiModelProperty(value = "客户编码")
    @JsonProperty(value = "customCode")
    public String customCode;

    @ApiModelProperty(value = "客户名称")
    @JsonProperty(value = "customName")
    public String customName;

    @ApiModelProperty(value = "交货时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @JsonProperty(value = "deliveryTime")
    public Date deliveryTime;

    @ApiModelProperty(value = "快递代收金额")
    @JsonProperty(value = "expressCollectionAmount")
    public BigDecimal expressCollectionAmount;

    @ApiModelProperty(value = "快递费")
    @JsonProperty(value = "expressFee")
    public BigDecimal expressFee;

    @ApiModelProperty(value = "快递代收实收金额")
    @JsonProperty(value = "expressReceivedAmount")
    public BigDecimal expressReceivedAmount;

    @ApiModelProperty(value = "车费")
    @JsonProperty(value = "fare")
    public BigDecimal fare;

    @ApiModelProperty(value = "尾款金额")
    @JsonProperty(value = "finalPaymentAmount")
    public BigDecimal finalPaymentAmount;

    @ApiModelProperty(value = "尾款实收金额")
    @JsonProperty(value = "finalReceivedAmount")
    public BigDecimal finalReceivedAmount;

    @ApiModelProperty(value = "上传图片")
    @JsonProperty(value = "imageAttachment")
    public String imageAttachment;

    @ApiModelProperty(value = "上传图档")
    @JsonProperty(value = "wordAttachment")
    public String wordAttachment;

    @ApiModelProperty(value = "材料名称")
    @JsonProperty(value = "materialName")
    public String materialName;

    @ApiModelProperty(value = "订单状态 submitting:提交中,  producing: 生产中, completed: 已完成")
    @JsonProperty(value = "orderStatus")
    public String orderStatus;

    @ApiModelProperty(value = "是否外发")
    @JsonProperty(value = "outGoing")
    public Boolean outGoing;

    @ApiModelProperty(value = "外发金额")
    @JsonProperty(value = "outGoingAmount")
    public BigDecimal outGoingAmount;

    @ApiModelProperty(value = "外发供应商")
    @JsonProperty(value = "outGoingSupplier")
    public String outGoingSupplier;

    @ApiModelProperty(value = "外发付款金额")
    @JsonProperty(value = "outgoingPayment")
    public BigDecimal outgoingPayment;

    @ApiModelProperty(value = "件数")
    @JsonProperty(value = "processNum")
    public Long processNum;

    @ApiModelProperty(value = "加工工艺")
    @JsonProperty(value = "processingTechnology")
    public String processingTechnology;

    @ApiModelProperty(value = "已收金额")
    @JsonProperty(value = "receivedAmount")
    public BigDecimal receivedAmount;

    @ApiModelProperty(value = "加工备注")
    @JsonProperty(value = "remark")
    public String remark;

    @ApiModelProperty(value = "回金")
    @JsonProperty(value = "repayment")
    public BigDecimal repayment;

    @ApiModelProperty(value = "供应商代收金额")
    @JsonProperty(value = "supplierCollectionAmount")
    public BigDecimal supplierCollectionAmount;

    @ApiModelProperty(value = "供应商代收实收金额")
    @JsonProperty(value = "supplierReceivedAmount")
    public BigDecimal supplierReceivedAmount;

    @ApiModelProperty(value = " 电话号码")
    @JsonProperty(value = "telephone")
    public String telephone;

    @ApiModelProperty(value = "总金额(包含回金、外发、税金）")
    @JsonProperty(value = "totalAmount")
    public BigDecimal totalAmount;

    @ApiModelProperty(value = "重量")
    @JsonProperty(value = "weight")
    public String weight;

    @ApiModelProperty(value = "材料编码")
    @JsonProperty(value = "materialCode")
    public String materialCode;
    @TableLogic
    @ApiModelProperty(value = "是否删除")
    @JsonProperty(value = "deleteFlag")
    private Integer deleteFlag;

    @ApiModelProperty(value = "是否发货")
    @JsonProperty(value = "sendingStatus")
    private Integer sendingStatus;

    @ApiModelProperty(value = "是否支付")
    @JsonProperty(value = "paymentStatus")
    private Boolean paymentStatus;

    @ApiModelProperty(value = "下载人id")
    @JsonProperty(value = "downloader")
    private String downloader;

    @ApiModelProperty(value = "下载人")
    @JsonProperty(value = "downloaderName")
    private String downloaderName;

    @ApiModelProperty(value = "支付记录")
    @JsonProperty(value = "payAttachment")
    private String payAttachment;
}
