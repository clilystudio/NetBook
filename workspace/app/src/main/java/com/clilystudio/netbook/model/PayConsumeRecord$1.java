package com.clilystudio.netbook.model;

class PayConsumeRecord$1 {

    static final int[] $SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType = new int[PayConsumeRecord$PayType.values().length];

    static {
        exit_point:
        {
            try {
                $SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[PayConsumeRecord$PayType.SINGLE_CHAPTER.ordinal()] = 1;
            } catch (NoSuchFieldError NoSuchFieldError1) {
            }
            try {
                $SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[PayConsumeRecord$PayType.MULTIPLE_CHAPTERS.ordinal()] = 2;
            } catch (NoSuchFieldError NoSuchFieldError2) {
            }
            try {
                $SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[PayConsumeRecord$PayType.AUTO_PURCHASE.ordinal()] = 3;
            } catch (NoSuchFieldError NoSuchFieldError3) {
            }
            try {
                $SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[PayConsumeRecord$PayType.WHOLE_BOOK.ordinal()] = 4;
            } catch (NoSuchFieldError NoSuchFieldError4) {
                break exit_point;
            }
            return;
        }
    }
}
