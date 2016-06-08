package com.clilystudio.netbook.model;

public class WXPayOrder {
    private boolean ok;
    private String orderId;
    private WXPayOrder.PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String paramString) {
        this.orderId = paramString;
    }

    public WXPayOrder.PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(WXPayOrder.PayOrder paramPayOrder) {
        this.payOrder = paramPayOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public String toString() {
        return "WXPayOrder{ok=" + this.ok + ", payOrder=" + this.payOrder + ", orderId='" + this.orderId + '\'' + '}';
    }
}

