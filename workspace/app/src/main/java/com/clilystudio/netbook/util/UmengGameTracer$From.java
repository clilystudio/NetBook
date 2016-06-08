package com.clilystudio.netbook.util;

public enum UmengGameTracer$From {
    static {
        Bookshelf = new From("Bookshelf", 1, "bookshelf");
        Reader = new From("Reader", 2, "reader_menu");
        Notification = new From("Notification", 3, "notification");
        From[] arrayOfFrom = new From[4];
        arrayOfFrom[0] = Splash;
        arrayOfFrom[1] = Bookshelf;
        arrayOfFrom[2] = Reader;
        arrayOfFrom[3] = Notification;
        a = arrayOfFrom;
    }

    private String mPre;

    private UmengGameTracer$From(String paramString) {
        this.mPre = ("new_game_ad_" + paramString);
    }

    public final String build() {
        return this.mPre + "_";
    }

    public final String getPre() {
        return this.mPre;
    }
}

