package com.clilystudio.netbook.util.adutil;

final class f {
    static final /* synthetic */ int[] a;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        a = new int[AdSplashImp.EventType.values().length];
        try {
            f.a[AdSplashImp.EventType.PRESENT.ordinal()] = 1;
        } catch (NoSuchFieldError var0_2) {
        }
        try {
            f.a[AdSplashImp.EventType.CLICK.ordinal()] = 2;
        } catch (NoSuchFieldError var1_1) {
        }
        try {
            f.a[AdSplashImp.EventType.DOWNLOAD.ordinal()] = 3;
            return;
        } catch (NoSuchFieldError var2) {
            return;
        }
    }
}
