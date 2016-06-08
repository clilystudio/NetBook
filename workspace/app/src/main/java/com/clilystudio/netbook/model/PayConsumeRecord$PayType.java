package com.clilystudio.netbook.model;

public enum PayConsumeRecord$PayType {
    static {
        AUTO_PURCHASE = new PayType("AUTO_PURCHASE", 1);
        WHOLE_BOOK = new PayType("WHOLE_BOOK", 2);
        MULTIPLE_CHAPTERS = new PayType("MULTIPLE_CHAPTERS", 3);
        VIP_SERVICE = new PayType("VIP_SERVICE", 4);
        PayType[] arrayOfPayType = new PayType[5];
        arrayOfPayType[0] = SINGLE_CHAPTER;
        arrayOfPayType[1] = AUTO_PURCHASE;
        arrayOfPayType[2] = WHOLE_BOOK;
        arrayOfPayType[3] = MULTIPLE_CHAPTERS;
        arrayOfPayType[4] = VIP_SERVICE;
        $VALUES = arrayOfPayType;
    }
}

