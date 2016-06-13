package com.clilystudio.netbook.model;

public class WXPayOrder {
    private boolean ok;
    private String orderId;
    private WXPayOrder$PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String string) {
        this.orderId = string;
    }

    public WXPayOrder$PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(WXPayOrder$PayOrder payOrder) {
        this.payOrder = payOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public String toString() {
        return "WXPayOrder{ok=" + this.ok + ", payOrder=" + this.payOrder + ", orderId='" + this.orderId + '\'' + '}';
    }
}
