package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.text.DecimalFormat;

public class ChargePlan implements Serializable {

    private static final long serialVersionUID = -8138264341542713200L;
    private String _id;
    private int currency;
    private float price;
    private int voucher;

    public int getCurrency() {
        return currency;
    }

    public void setCurrency(int int1) {
        currency = int1;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float float1) {
        price = float1;
    }

    public String getPriceDsc() {
        return new DecimalFormat("##.##").format((double) price);
    }

    public String getString() {
        String String1 = new StringBuilder().append(currency).append("\u8FFD\u4E66\u5E01").toString();

        if (voucher > 0)
            String1 = new StringBuilder().append(String1).append("+").append(voucher).append("\u8FFD\u4E66\u5238").toString();
        return String1;
    }

    public int getVoucher() {
        return voucher;
    }

    public void setVoucher(int int1) {
        voucher = int1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
