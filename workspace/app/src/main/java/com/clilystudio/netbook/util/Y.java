package com.clilystudio.netbook.util;

final class Y {
    static final /* synthetic */ int[] a;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        a = new int[BookSyncRecord$BookModifyType.values().length];
        try {
            Y.a[BookSyncRecord$BookModifyType.SHELF_ADD.ordinal()] = 1;
        } catch (NoSuchFieldError var0_3) {
        }
        try {
            Y.a[BookSyncRecord$BookModifyType.SHELF_REMOVE.ordinal()] = 2;
        } catch (NoSuchFieldError var1_2) {
        }
        try {
            Y.a[BookSyncRecord$BookModifyType.FEED_ADD.ordinal()] = 3;
        } catch (NoSuchFieldError var2_1) {
        }
        try {
            Y.a[BookSyncRecord$BookModifyType.FEED_REMOVE.ordinal()] = 4;
            return;
        } catch (NoSuchFieldError var3) {
            return;
        }
    }
}
