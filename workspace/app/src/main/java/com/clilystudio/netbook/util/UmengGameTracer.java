package com.clilystudio.netbook.util;

import android.content.Context;

public final class UmengGameTracer {
    private Context a;
    private UmengGameTracer.From b;

    public UmengGameTracer(Context context, UmengGameTracer.From from) {
        this.a = context;
        this.b = from;
    }

    public final void a(String string) {
        b.a(this.a, this.b.build(), string);
    }


    public enum From {
        Splash, Bookshelf, Reader, Notification;

        private String mPre;

        private From(String paramString) {
            this.mPre = ("new_game_ad_" + paramString);
        }

        public final String build() {
            return this.mPre + "_";
        }

        public final String getPre() {
            return this.mPre;
        }
    }
}
