package com.clilystudio.netbook.model;

public class WXPayOrder {

    private boolean ok;
    private String orderId;
    private WXPayOrder$PayOrder payOrder;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String String1) {
        orderId = String1;
    }

    public WXPayOrder$PayOrder getPayOrder() {
        return payOrder;
    }

    public void setPayOrder(WXPayOrder$PayOrder PayOrder1) {
        payOrder = PayOrder1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }

    public String toString() {
        return new StringBuilder("WXPayOrder{ok=").append(ok).append(", payOrder=").append(payOrder).append(", orderId='").append(orderId).append('\'').append('}').toString();
    }
}
