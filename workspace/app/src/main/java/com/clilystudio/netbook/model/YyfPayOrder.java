
package com.clilystudio.netbook.model;

public class YyfPayOrder {

    private boolean ok;
    private String orderId;
    private YyfPayOrder$PayOrder payOrder;

    public String getOrderId()
    {
        return orderId;
    }

    public YyfPayOrder$PayOrder getPayOrder()
    {
        return payOrder;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setOrderId(String String1)
    {
        orderId = String1;
    }

    public void setPayOrder(YyfPayOrder$PayOrder PayOrder1)
    {
        payOrder = PayOrder1;
    }
}
