package com.clilystudio.netbook.model;

public class PayChargeRecord {
    private boolean ok;
    private PayChargeRecord$Order[] orders;

    public PayChargeRecord$Order[] getOrders() {
        return this.orders;
    }

    public void setOrders(PayChargeRecord$Order[] arrpayChargeRecord$Order) {
        this.orders = arrpayChargeRecord$Order;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
