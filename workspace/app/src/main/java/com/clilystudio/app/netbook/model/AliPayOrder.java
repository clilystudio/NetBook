package com.clilystudio.app.netbook.model;

public class AliPayOrder {
    private boolean ok;
    private String orderId;
    private AliPayOrder.PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public AliPayOrder.PayOrder getPayOrder() {
        return this.payOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setOrderId(String paramString) {
        this.orderId = paramString;
    }

    public void setPayOrder(AliPayOrder.PayOrder paramPayOrder) {
        this.payOrder = paramPayOrder;
    }

    public String toString() {
        return "AliPayOrder{ok=" + this.ok + ", payOrder=" + this.payOrder + ", orderId='" + this.orderId + '\'' + '}';
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.AliPayOrder
 * JD-Core Version:    0.6.2
 */