package com.clilystudio.netbook.util;

public final class UmengGameTracer$From
        extends Enum<UmengGameTracer$From> {
    public static final /* enum */ UmengGameTracer$From Bookshelf;
    public static final /* enum */ UmengGameTracer$From Notification;
    public static final /* enum */ UmengGameTracer$From Reader;
    public static final /* enum */ UmengGameTracer$From Splash;
    private static final /* synthetic */ UmengGameTracer$From[] a;

    static {
        Splash = new UmengGameTracer$From("splash");
        Bookshelf = new UmengGameTracer$From("bookshelf");
        Reader = new UmengGameTracer$From("reader_menu");
        Notification = new UmengGameTracer$From("notification");
        UmengGameTracer$From[] arrumengGameTracer$From = new UmengGameTracer$From[]{Splash, Bookshelf, Reader, Notification};
        a = arrumengGameTracer$From;
    }

    private String mPre;

    private UmengGameTracer$From(String string2) {
        super(string, n);
        this.mPre = "new_game_ad_" + string2;
    }

    public static UmengGameTracer$From valueOf(String string) {
        return (UmengGameTracer$From) ((Object) Enum.valueOf(UmengGameTracer$From.class, string));
    }

    public static UmengGameTracer$From[] values() {
        return (UmengGameTracer$From[]) a.clone();
    }

    public final String build() {
        return this.mPre + "_";
    }

    public final String getPre() {
        return this.mPre;
    }
}
