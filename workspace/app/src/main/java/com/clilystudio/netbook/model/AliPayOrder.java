package com.clilystudio.netbook.model;

public class AliPayOrder {
    private boolean ok;
    private String orderId;
    private AliPayOrder$PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String string) {
        this.orderId = string;
    }

    public AliPayOrder$PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(AliPayOrder$PayOrder payOrder) {
        this.payOrder = payOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public String toString() {
        return "AliPayOrder{ok=" + this.ok + ", payOrder=" + this.payOrder + ", orderId='" + this.orderId + '\'' + '}';
    }
}
