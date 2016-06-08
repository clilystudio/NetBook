package com.clilystudio.netbook.util;

import android.content.Context;

public final class UmengGameTracer {
    private Context a;
    private UmengGameTracer.From b;

    public UmengGameTracer(Context paramContext, UmengGameTracer.From paramFrom) {
        this.a = paramContext;
        this.b = paramFrom;
    }

    public final void a(String paramString) {
        b.a(this.a, this.b.build(), paramString);
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
    }}

