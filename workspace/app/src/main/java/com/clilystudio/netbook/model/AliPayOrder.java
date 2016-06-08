package com.clilystudio.netbook.model;

public class AliPayOrder {
    private boolean ok;
    private String orderId;
    private AliPayOrder.PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String paramString) {
        this.orderId = paramString;
    }

    public AliPayOrder.PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(AliPayOrder.PayOrder paramPayOrder) {
        this.payOrder = paramPayOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public String toString() {
        return "AliPayOrder{ok=" + this.ok + ", payOrder=" + this.payOrder + ", orderId='" + this.orderId + '\'' + '}';
    }
}

