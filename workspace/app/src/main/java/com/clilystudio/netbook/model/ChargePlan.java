package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.text.DecimalFormat;

public class ChargePlan
        implements Serializable {
    private static final long serialVersionUID = -8138264341542713200L;
    private String _id;
    private int currency;
    private float price;
    private int voucher;

    public int getCurrency() {
        return this.currency;
    }

    public void setCurrency(int paramInt) {
        this.currency = paramInt;
    }

    public float getPrice() {
        return this.price;
    }

    public void setPrice(float paramFloat) {
        this.price = paramFloat;
    }

    public String getPriceDsc() {
        return new DecimalFormat("##.##").format(this.price);
    }

    public String getString() {
        String str = this.currency + "追书币";
        if (this.voucher > 0)
            str = str + "+" + this.voucher + "追书券";
        return str;
    }

    public int getVoucher() {
        return this.voucher;
    }

    public void setVoucher(int paramInt) {
        this.voucher = paramInt;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

