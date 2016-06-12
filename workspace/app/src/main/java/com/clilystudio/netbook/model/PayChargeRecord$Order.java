
package com.clilystudio.netbook.model;

import java.util.Date;

public class PayChargeRecord$Order {

    private String _id;
    private String accountId;
    private int amount;
    private Date completed;
    private Date created;
    private int currency;
    private String payId;
    private String payType;
    private float price;
    private String stat;
    private String timeflag;
    private int voucher;

    public String getAccountId()
    {
        return accountId;
    }

    public int getAmount()
    {
        return amount;
    }

    public String getChargeString()
    {
        if( completed == null )
            return "\u672A\u652F\u4ED8";
        else if( voucher > 0 )
            return new StringBuilder().append( currency ).append( "\u8FFD\u4E66\u5E01+" ).append( voucher ).append( "\u8FFD\u4E66\u5238" ).toString();
        else
            return new StringBuilder().append( currency ).append( "\u8FFD\u4E66\u5E01" ).toString();
    }

    public Date getCompleted()
    {
        return completed;
    }

    public Date getCreated()
    {
        return created;
    }

    public int getCurrency()
    {
        return currency;
    }

    public String getPayId()
    {
        return payId;
    }

    public String getPayType()
    {
        return payType;
    }

    public float getPrice()
    {
        return price;
    }

    public String getStat()
    {
        return stat;
    }

    public String getTimeflag()
    {
        return timeflag;
    }

    public int getVoucher()
    {
        return voucher;
    }

    public String get_id()
    {
        return _id;
    }

    public boolean isCompleted()
    {
        return "completed".equals( stat );
    }

    public void setAccountId(String String1)
    {
        accountId = String1;
    }

    public void setAmount(int int1)
    {
        amount = int1;
    }

    public void setCompleted(Date Date1)
    {
        completed = Date1;
    }

    public void setCreated(Date Date1)
    {
        created = Date1;
    }

    public void setCurrency(int int1)
    {
        currency = int1;
    }

    public void setPayId(String String1)
    {
        payId = String1;
    }

    public void setPayType(String String1)
    {
        payType = String1;
    }

    public void setPrice(float float1)
    {
        price = float1;
    }

    public void setStat(String String1)
    {
        stat = String1;
    }

    public void setTimeflag(String String1)
    {
        timeflag = String1;
    }

    public void setVoucher(int int1)
    {
        voucher = int1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
