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

    private static PaySheetItem getItem(Context paramContext, ChargeType paramChargeType) {
        String str = paramChargeType.getType();
        PaySheetItem localPaySheetItem;
        if ("alipay".equals(str)) {
            localPaySheetItem = new PaySheetItem();
            localPaySheetItem.id = 0;
            localPaySheetItem.iconId = 2130838030;
            localPaySheetItem.textId = 2131034427;
        }
        while (true) {
            localPaySheetItem.chargeType = paramChargeType;
            return localPaySheetItem;
            if ("weixinpay".equals(str)) {
                localPaySheetItem = new PaySheetItem();
                localPaySheetItem.id = 1;
                if (a.a(paramContext)) ;
                for (localPaySheetItem.iconId = 2130838044; ; localPaySheetItem.iconId = 2130838046) {
                    localPaySheetItem.textId = 2131034429;
                    break;
                }
            }
            boolean bool = "youyifupay".equals(str);
            localPaySheetItem = null;
            if (!bool)
                continue;
            localPaySheetItem = new PaySheetItem();
            localPaySheetItem.id = 2;
            localPaySheetItem.iconId = 2130838039;
            localPaySheetItem.textId = 2131034428;
        }
    }

    public static List<PaySheetItem> getItems(Context paramContext, ChargeType[] paramArrayOfChargeType) {
        ArrayList localArrayList = new ArrayList();
        int i = paramArrayOfChargeType.length;
        for (int j = 0; j < i; j++) {
            PaySheetItem localPaySheetItem = getItem(paramContext, paramArrayOfChargeType[j]);
            if (localPaySheetItem == null)
                continue;
            localArrayList.add(localPaySheetItem);
        }
        return localArrayList;
    }

    public ChargeType getChargeType() {
        return this.chargeType;
    }

    public void setChargeType(ChargeType paramChargeType) {
        this.chargeType = paramChargeType;
    }

    public int getIconId() {
        return this.iconId;
    }

    public void setIconId(int paramInt) {
        this.iconId = paramInt;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int paramInt) {
        this.id = paramInt;
    }

    public int getTextId() {
        return this.textId;
    }

    public void setTextId(int paramInt) {
        this.textId = paramInt;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setEnable(boolean paramBoolean) {
        this.enable = paramBoolean;
    }
}
