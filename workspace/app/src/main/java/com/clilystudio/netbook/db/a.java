package com.clilystudio.netbook.db;

final class a {
    static final /* synthetic */ int[] a;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        a = new int[BookSyncRecord$BookModifyType.values().length];
        try {
            a.a[BookSyncRecord$BookModifyType.SHELF_ADD.ordinal()] = 1;
        } catch (NoSuchFieldError var0_4) {
        }
        try {
            a.a[BookSyncRecord$BookModifyType.SHELF_REMOVE.ordinal()] = 2;
        } catch (NoSuchFieldError var1_3) {
        }
        try {
            a.a[BookSyncRecord$BookModifyType.FEED_ADD.ordinal()] = 3;
        } catch (NoSuchFieldError var2_2) {
        }
        try {
            a.a[BookSyncRecord$BookModifyType.FEED_REMOVE.ordinal()] = 4;
        } catch (NoSuchFieldError var3_1) {
        }
        try {
            a.a[BookSyncRecord$BookModifyType.SYNC_SUCCESS.ordinal()] = 5;
            return;
        } catch (NoSuchFieldError var4) {
            return;
        }
    }
}
