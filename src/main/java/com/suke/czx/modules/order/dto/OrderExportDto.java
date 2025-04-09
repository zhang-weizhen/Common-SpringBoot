package com.suke.czx.modules.order.dto;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import lombok.Data;

import java.math.BigDecimal;
import java.net.URL;
import java.util.Date;

/**
 * 订单导出类
 */
@Data
public class OrderExportDto {


    @ExcelProperty("客户名称")
    private String customName;

    @DateTimeFormat("yyyy-MM-dd HH:mm:ss")
    @ExcelProperty("下单时间")
    private Date createTime;

    @ExcelProperty("图片")
    private URL url;

    @ExcelProperty("材料")
    private String materialName;

    @ExcelProperty("克重")
    public String weight;

    @ExcelProperty("件数")
    public Long processNum;

    @ExcelProperty("总金额")
    public BigDecimal totalAmount;

    @ExcelProperty("外发金额")
    public BigDecimal outGoingAmount;

    @ExcelProperty("外发供应商")
    public String outGoingSupplierName;

    @ExcelProperty("快递费")
    public BigDecimal expressFee;
}
