package com.clilystudio.netbook.model;

import android.content.Context;

import java.util.ArrayList;
import java.util.List;

public class PaySheetItem {

    private ChargeType chargeType;
    private boolean enable;
    private int iconId;
    private int id;
    private int textId;

    private static PaySheetItem getItem(Context Context1, ChargeType ChargeType2) {
        String String3 = ChargeType2.getType();
        PaySheetItem PaySheetItem4;

        if ("alipay".equals(String3)) {
            PaySheetItem4 = new PaySheetItem();
            PaySheetItem4.id = 0;
            PaySheetItem4.iconId = 2130838030;
            PaySheetItem4.textId = 2131034427;
        } else if ("weixinpay".equals(String3)) {
            PaySheetItem4 = new PaySheetItem();
            PaySheetItem4.id = 1;
            if (com.clilystudio.netbook.pay.weixin.a.a(Context1))
                PaySheetItem4.iconId = 2130838044;
            else
                PaySheetItem4.iconId = 2130838046;
            PaySheetItem4.textId = 2131034429;
        } else {
            boolean boolean5 = "youyifupay".equals(String3);

            PaySheetItem4 = null;
            if (boolean5) {
                PaySheetItem4 = new PaySheetItem();
                PaySheetItem4.id = 2;
                PaySheetItem4.iconId = 2130838039;
                PaySheetItem4.textId = 2131034428;
            }
        }
        PaySheetItem4.chargeType = ChargeType2;
        return PaySheetItem4;
    }

    public static List getItems(Context Context1, ChargeType[] ChargeType_1darray2) {
        Object Object3 = new ArrayList();
        int int4 = ChargeType_1darray2.length;
        int int5;

        for (int5 = 0; int5 < int4; ++int5) {
            PaySheetItem PaySheetItem6 = getItem(Context1, ChargeType_1darray2[int5]);

            if (PaySheetItem6 != null)
                ((List) Object3).add(PaySheetItem6);
        }
        return (List) Object3;
    }

    public ChargeType getChargeType() {
        return chargeType;
    }

    public void setChargeType(ChargeType ChargeType1) {
        chargeType = ChargeType1;
    }

    public int getIconId() {
        return iconId;
    }

    public void setIconId(int int1) {
        iconId = int1;
    }

    public int getId() {
        return id;
    }

    public void setId(int int1) {
        id = int1;
    }

    public int getTextId() {
        return textId;
    }

    public void setTextId(int int1) {
        textId = int1;
    }

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean boolean1) {
        enable = boolean1;
    }
}
