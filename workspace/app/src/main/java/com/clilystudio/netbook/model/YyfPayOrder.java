package com.clilystudio.netbook.model;

public class YyfPayOrder {
    private boolean ok;
    private String orderId;
    private PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String string) {
        this.orderId = string;
    }

    public PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(PayOrder payOrder) {
        this.payOrder = payOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
