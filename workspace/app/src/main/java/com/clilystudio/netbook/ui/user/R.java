package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.model.PayConsumeRecord$PayType;

final class R {
    static final /* synthetic */ int[] a;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        a = new int[PayConsumeRecord$PayType.values().length];
        try {
            R.a[PayConsumeRecord$PayType.MULTIPLE_CHAPTERS.ordinal()] = 1;
        } catch (NoSuchFieldError var0_3) {
        }
        try {
            R.a[PayConsumeRecord$PayType.SINGLE_CHAPTER.ordinal()] = 2;
        } catch (NoSuchFieldError var1_2) {
        }
        try {
            R.a[PayConsumeRecord$PayType.AUTO_PURCHASE.ordinal()] = 3;
        } catch (NoSuchFieldError var2_1) {
        }
        try {
            R.a[PayConsumeRecord$PayType.WHOLE_BOOK.ordinal()] = 4;
            return;
        } catch (NoSuchFieldError var3) {
            return;
        }
    }
}
