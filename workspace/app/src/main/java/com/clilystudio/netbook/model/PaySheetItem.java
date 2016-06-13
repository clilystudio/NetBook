package com.clilystudio.netbook.model;

import android.content.Context;

import com.clilystudio.netbook.pay.weixin.a;

import java.util.ArrayList;
import java.util.List;

public class PaySheetItem {
    private ChargeType chargeType;
    private boolean enable;
    private int iconId;
    private int id;
    private int textId;

    /*
     * Enabled aggressive block sorting
     */
    private static PaySheetItem getItem(Context context, ChargeType chargeType) {
        PaySheetItem paySheetItem;
        String string = chargeType.getType();
        if ("alipay".equals(string)) {
            paySheetItem = new PaySheetItem();
            paySheetItem.id = 0;
            paySheetItem.iconId = 2130838030;
            paySheetItem.textId = 2131034427;
        } else if ("weixinpay".equals(string)) {
            paySheetItem = new PaySheetItem();
            paySheetItem.id = 1;
            paySheetItem.iconId = a.a(context) ? 2130838044 : 2130838046;
            paySheetItem.textId = 2131034429;
        } else {
            boolean bl = "youyifupay".equals(string);
            paySheetItem = null;
            if (bl) {
                paySheetItem = new PaySheetItem();
                paySheetItem.id = 2;
                paySheetItem.iconId = 2130838039;
                paySheetItem.textId = 2131034428;
            }
        }
        paySheetItem.chargeType = chargeType;
        return paySheetItem;
    }

    public static List<PaySheetItem> getItems(Context context, ChargeType[] arrchargeType) {
        ArrayList<PaySheetItem> arrayList = new ArrayList<PaySheetItem>();
        int n = arrchargeType.length;
        for (int i = 0; i < n; ++i) {
            PaySheetItem paySheetItem = PaySheetItem.getItem(context, arrchargeType[i]);
            if (paySheetItem == null) continue;
            arrayList.add(paySheetItem);
        }
        return arrayList;
    }

    public ChargeType getChargeType() {
        return this.chargeType;
    }

    public void setChargeType(ChargeType chargeType) {
        this.chargeType = chargeType;
    }

    public int getIconId() {
        return this.iconId;
    }

    public void setIconId(int n) {
        this.iconId = n;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int n) {
        this.id = n;
    }

    public int getTextId() {
        return this.textId;
    }

    public void setTextId(int n) {
        this.textId = n;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setEnable(boolean bl) {
        this.enable = bl;
    }
}
