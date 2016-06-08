package com.clilystudio.netbook.model;

public class PayConsumeRecord {
    private boolean ok;
    private PayConsumeRecord.Order[] orders;

    public PayConsumeRecord.Order[] getOrders() {
        return this.orders;
    }

    public void setOrders(PayConsumeRecord.Order[] paramArrayOfOrder) {
        this.orders = paramArrayOfOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

