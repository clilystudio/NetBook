package com.clilystudio.netbook.model;

class PayConsumeRecord$1 {
    static final /* synthetic */ int[] $SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        $SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType = new int[PayConsumeRecord$PayType.values().length];
        try {
            PayConsumeRecord$1.$SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[PayConsumeRecord$PayType.SINGLE_CHAPTER.ordinal()] = 1;
        } catch (NoSuchFieldError var0_3) {
        }
        try {
            PayConsumeRecord$1.$SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[PayConsumeRecord$PayType.MULTIPLE_CHAPTERS.ordinal()] = 2;
        } catch (NoSuchFieldError var1_2) {
        }
        try {
            PayConsumeRecord$1.$SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[PayConsumeRecord$PayType.AUTO_PURCHASE.ordinal()] = 3;
        } catch (NoSuchFieldError var2_1) {
        }
        try {
            PayConsumeRecord$1.$SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[PayConsumeRecord$PayType.WHOLE_BOOK.ordinal()] = 4;
            return;
        } catch (NoSuchFieldError var3) {
            return;
        }
    }
}
