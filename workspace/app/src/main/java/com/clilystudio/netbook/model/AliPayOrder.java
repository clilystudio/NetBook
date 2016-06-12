
package com.clilystudio.netbook.model;

public class AliPayOrder {

    private boolean ok;
    private String orderId;
    private AliPayOrder$PayOrder payOrder;

    public String getOrderId()
    {
        return orderId;
    }

    public AliPayOrder$PayOrder getPayOrder()
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

    public void setPayOrder(AliPayOrder$PayOrder PayOrder1)
    {
        payOrder = PayOrder1;
    }

    public String toString()
    {
        return new StringBuilder( "AliPayOrder{ok=" ).append( ok ).append( ", payOrder=" ).append( payOrder ).append( ", orderId='" ).append( orderId ).append( '\'' ).append( '}' ).toString();
    }
}
