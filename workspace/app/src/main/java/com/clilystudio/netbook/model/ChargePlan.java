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

    public void setCurrency(int n) {
        this.currency = n;
    }

    public float getPrice() {
        return this.price;
    }

    public void setPrice(float f) {
        this.price = f;
    }

    public String getPriceDsc() {
        return new DecimalFormat("##.##").format(this.price);
    }

    public String getString() {
        String string = "" + this.currency + "\u8ffd\u4e66\u5e01";
        if (this.voucher > 0) {
            string = string + "+" + this.voucher + "\u8ffd\u4e66\u5238";
        }
        return string;
    }

    public int getVoucher() {
        return this.voucher;
    }

    public void setVoucher(int n) {
        this.voucher = n;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
