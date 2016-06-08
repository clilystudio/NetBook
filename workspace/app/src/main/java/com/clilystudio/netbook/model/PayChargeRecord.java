package com.clilystudio.netbook.model;

public class PayChargeRecord {
    private boolean ok;
    private PayChargeRecord.Order[] orders;

    public PayChargeRecord.Order[] getOrders() {
        return this.orders;
    }

    public void setOrders(PayChargeRecord.Order[] paramArrayOfOrder) {
        this.orders = paramArrayOfOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

