package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.model.PayConsumeRecord$PayType;

final class R {

    static final int[] a = new int[PayConsumeRecord$PayType.values().length];

    static {
        exit_point:
        {
            try {
                a[PayConsumeRecord$PayType.MULTIPLE_CHAPTERS.ordinal()] = 1;
            } catch (NoSuchFieldError NoSuchFieldError1) {
            }
            try {
                a[PayConsumeRecord$PayType.SINGLE_CHAPTER.ordinal()] = 2;
            } catch (NoSuchFieldError NoSuchFieldError2) {
            }
            try {
                a[PayConsumeRecord$PayType.AUTO_PURCHASE.ordinal()] = 3;
            } catch (NoSuchFieldError NoSuchFieldError3) {
            }
            try {
                a[PayConsumeRecord$PayType.WHOLE_BOOK.ordinal()] = 4;
            } catch (NoSuchFieldError NoSuchFieldError4) {
                break exit_point;
            }
            return;
        }
    }
}
