package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;

final class cK extends c<String, String> {
    private int a;
    private /* synthetic */ ReaderWebActivity b;

    public cK(ReaderWebActivity readerWebActivity, Activity activity, int n) {
        this.b = readerWebActivity;
        super(activity, R.string.loading);
        this.a = n;
    }

    private /* varargs */ String a(String... arrstring) {
        try {
            String string = b.b().b(arrstring[0], this.a);
            return string;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }
}
