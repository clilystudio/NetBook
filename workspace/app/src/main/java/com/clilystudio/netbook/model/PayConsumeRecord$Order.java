package com.clilystudio.netbook.model;

import java.util.Date;

public class PayConsumeRecord$Order {

    PayConsumeRecord$OrderItem[] items;
    private String _id;
    private Date created;
    private PayConsumeRecord$PayType payType;
    private int price;
    private String type;
    private int useCurrency;
    private int useVoucher;

    public String getBookName() {
        if (items == null || items.length == 0)
            return "";
        else
            return items[0].getBookName();
    }

    public String getChapterTitle() {
        if (items == null || items.length == 0)
            return "";
        else
            return items[0].getChapterTitle();
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date Date1) {
        created = Date1;
    }

    public PayConsumeRecord$OrderItem[] getItems() {
        return items;
    }

    public void setItems(PayConsumeRecord$OrderItem[] OrderItem_1darray1) {
        items = OrderItem_1darray1;
    }

    public PayConsumeRecord$PayType getPayType() {
        if (payType == null) {
            if (!type.equals("single")) {
                if (type.equals("auto")) {
                    payType = PayConsumeRecord$PayType.AUTO_PURCHASE;
                    return payType;
                } else if (type.equals("vip")) {
                    payType = PayConsumeRecord$PayType.VIP_SERVICE;
                    return payType;
                }
            }
            payType = PayConsumeRecord$PayType.SINGLE_CHAPTER;
        }
        return payType;
    }

    public String getPayTypeString() {
        switch (PayConsumeRecord$1.$SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[getPayType().ordinal()]) {
            default:
                return "";
            case 1:
                return "\u5355\u7AE0\u8D2D\u4E70";
            case 2:
                return "\u6279\u91CF\u8D2D\u4E70";
            case 3:
                return "\u81EA\u52A8\u8D2D\u4E70";
            case 4:
                return "\u6574\u672C\u8D2D\u4E70";
        }
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int int1) {
        price = int1;
    }

    public String[] getTitles() {
        String[] String_1darray1 = new String[items.length];
        int int2;

        for (int2 = 0; int2 < items.length; ++int2)
            String_1darray1[int2] = items[int2].getChapterTitle();
        return String_1darray1;
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }

    public int getUseCurrency() {
        return useCurrency;
    }

    public void setUseCurrency(int int1) {
        useCurrency = int1;
    }

    public int getUseVoucher() {
        return useVoucher;
    }

    public void setUseVoucher(int int1) {
        useVoucher = int1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
