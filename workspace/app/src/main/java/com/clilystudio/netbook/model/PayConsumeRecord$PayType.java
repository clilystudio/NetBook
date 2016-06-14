package com.clilystudio.netbook.model;

public final class PayConsumeRecord$PayType extends Enum<PayConsumeRecord$PayType> {
    public static final /* enum */ PayConsumeRecord$PayType AUTO_PURCHASE;
    public static final /* enum */ PayConsumeRecord$PayType MULTIPLE_CHAPTERS;
    public static final /* enum */ PayConsumeRecord$PayType SINGLE_CHAPTER;
    public static final /* enum */ PayConsumeRecord$PayType VIP_SERVICE;
    public static final /* enum */ PayConsumeRecord$PayType WHOLE_BOOK;
    private static final /* synthetic */ PayConsumeRecord$PayType[] $VALUES;

    static {
        SINGLE_CHAPTER = new PayConsumeRecord$PayType();
        AUTO_PURCHASE = new PayConsumeRecord$PayType();
        WHOLE_BOOK = new PayConsumeRecord$PayType();
        MULTIPLE_CHAPTERS = new PayConsumeRecord$PayType();
        VIP_SERVICE = new PayConsumeRecord$PayType();
        PayConsumeRecord$PayType[] arrpayConsumeRecord$PayType = new PayConsumeRecord$PayType[]{SINGLE_CHAPTER, AUTO_PURCHASE, WHOLE_BOOK, MULTIPLE_CHAPTERS, VIP_SERVICE};
        $VALUES = arrpayConsumeRecord$PayType;
    }

    private PayConsumeRecord$PayType() {
        super(string, n);
    }

    public static PayConsumeRecord$PayType valueOf(String string) {
        return (PayConsumeRecord$PayType) ((Object) Enum.valueOf(PayConsumeRecord$PayType.class, string));
    }

    public static PayConsumeRecord$PayType[] values() {
        return (PayConsumeRecord$PayType[]) $VALUES.clone();
    }
}
