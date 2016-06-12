package com.clilystudio.netbook.model;

public class PayConsumeRecord {

    private boolean ok;
    private PayConsumeRecord$Order[] orders;

    public PayConsumeRecord$Order[] getOrders() {
        return orders;
    }

    public void setOrders(PayConsumeRecord$Order[] Order_1darray1) {
        orders = Order_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
