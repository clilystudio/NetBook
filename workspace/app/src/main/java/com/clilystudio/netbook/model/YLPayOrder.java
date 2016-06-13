package com.clilystudio.netbook.model;

public class YLPayOrder {
    private boolean ok;
    private PayOrder payOrder;

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
