package com.clilystudio.netbook.reader;

import android.content.Context;

public final class cM {
    private cQ a;
    private Context b;
    private String[] c = new String[20];

    public cM(Context context, cQ cQ2) {
        this.a = cQ2;
        this.b = context;
    }

    static /* synthetic */ String[] a(cM cM2) {
        return cM2.c;
    }

    static /* synthetic */ cQ b(cM cM2) {
        return cM2.a;
    }

    public final boolean a(String string) {
        float f2 = a.H(this.b);
        float f3 = a.a(this.b, "BFD_RANDOM_RATE", 2.0f);
        if (f3 == 2.0f) {
            f3 = (float) Math.random();
            a.b(this.b, "BFD_RANDOM_RATE", f3);
        }
        if (f2 > f3) {
            return true;
        }
        new cO(this).b(string);
        return false;
    }
}
