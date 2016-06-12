package com.clilystudio.netbook.model;

public final class PayConsumeRecord$PayType extends Enum {

    public static final PayConsumeRecord$PayType SINGLE_CHAPTER = new PayConsumeRecord$PayType("SINGLE_CHAPTER", 0);
    public static final PayConsumeRecord$PayType AUTO_PURCHASE = new PayConsumeRecord$PayType("AUTO_PURCHASE", 1);
    public static final PayConsumeRecord$PayType WHOLE_BOOK = new PayConsumeRecord$PayType("WHOLE_BOOK", 2);
    public static final PayConsumeRecord$PayType MULTIPLE_CHAPTERS = new PayConsumeRecord$PayType("MULTIPLE_CHAPTERS", 3);
    public static final PayConsumeRecord$PayType VIP_SERVICE = new PayConsumeRecord$PayType("VIP_SERVICE", 4);
    private static PayConsumeRecord$PayType[] $VALUES;     // final access specifier removed

    static {
        PayConsumeRecord$PayType[] PayType_1darray1 = new PayConsumeRecord$PayType[5];

        PayType_1darray1[0] = SINGLE_CHAPTER;
        PayType_1darray1[1] = AUTO_PURCHASE;
        PayType_1darray1[2] = WHOLE_BOOK;
        PayType_1darray1[3] = MULTIPLE_CHAPTERS;
        PayType_1darray1[4] = VIP_SERVICE;
        $VALUES = PayType_1darray1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    private PayConsumeRecord$PayType(String String1, int int2) {
        super(String1, int2);
    }

    public static PayConsumeRecord$PayType valueOf(String String1) {
    }

    public static PayConsumeRecord$PayType[] values() {
        return (PayConsumeRecord$PayType[]) $VALUES.clone();
    }
}
