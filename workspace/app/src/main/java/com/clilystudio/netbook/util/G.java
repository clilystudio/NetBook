package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.InsideLinkType;

final class G {
    static final /* synthetic */ int[] a;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        a = new int[InsideLinkType.values().length];
        try {
            G.a[InsideLinkType.GAME.ordinal()] = 1;
        } catch (NoSuchFieldError var0_6) {
        }
        try {
            G.a[InsideLinkType.POST.ordinal()] = 2;
        } catch (NoSuchFieldError var1_5) {
        }
        try {
            G.a[InsideLinkType.LINK.ordinal()] = 3;
        } catch (NoSuchFieldError var2_4) {
        }
        try {
            G.a[InsideLinkType.BOOK.ordinal()] = 4;
        } catch (NoSuchFieldError var3_3) {
        }
        try {
            G.a[InsideLinkType.POST_HELP.ordinal()] = 5;
        } catch (NoSuchFieldError var4_2) {
        }
        try {
            G.a[InsideLinkType.POST_REVIEW.ordinal()] = 6;
        } catch (NoSuchFieldError var5_1) {
        }
        try {
            G.a[InsideLinkType.BOOKLIST.ordinal()] = 7;
            return;
        } catch (NoSuchFieldError var6) {
            return;
        }
    }
}
