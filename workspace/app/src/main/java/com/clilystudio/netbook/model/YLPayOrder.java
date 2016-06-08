package com.clilystudio.netbook.model;

public class YLPayOrder {
    private boolean ok;
    private YLPayOrder.PayOrder payOrder;

    public YLPayOrder.PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(YLPayOrder.PayOrder paramPayOrder) {
        this.payOrder = paramPayOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

