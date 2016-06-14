package com.clilystudio.netbook.model;

public class PayConsumeRecord {
    private boolean ok;
    private PayConsumeRecord$Order[] orders;

    public PayConsumeRecord$Order[] getOrders() {
        return this.orders;
    }

    public void setOrders(PayConsumeRecord$Order[] arrpayConsumeRecord$Order) {
        this.orders = arrpayConsumeRecord$Order;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public enum PayType {
        SINGLE_CHAPTER, AUTO_PURCHASE, WHOLE_BOOK, MULTIPLE_CHAPTERS, VIP_SERVICE;
    }
}
