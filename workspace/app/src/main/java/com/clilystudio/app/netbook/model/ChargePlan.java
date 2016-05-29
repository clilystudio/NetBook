package com.clilystudio.app.netbook.model;

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

    public float getPrice() {
        return this.price;
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

    public String get_id() {
        return this._id;
    }

    public void setCurrency(int paramInt) {
        this.currency = paramInt;
    }

    public void setPrice(float paramFloat) {
        this.price = paramFloat;
    }

    public void setVoucher(int paramInt) {
        this.voucher = paramInt;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ChargePlan
 * JD-Core Version:    0.6.2
 */