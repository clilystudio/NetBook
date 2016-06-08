package com.clilystudio.netbook.model;

public class YyfPayOrder {
    private boolean ok;
    private String orderId;
    private YyfPayOrder.PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String paramString) {
        this.orderId = paramString;
    }

    public YyfPayOrder.PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(YyfPayOrder.PayOrder paramPayOrder) {
        this.payOrder = paramPayOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

