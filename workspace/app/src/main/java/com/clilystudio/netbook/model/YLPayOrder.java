
package com.clilystudio.netbook.model;

public class YLPayOrder {

    private boolean ok;
    private YLPayOrder$PayOrder payOrder;

    public YLPayOrder$PayOrder getPayOrder()
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

    public void setPayOrder(YLPayOrder$PayOrder PayOrder1)
    {
        payOrder = PayOrder1;
    }
}
