package com.clilystudio.netbook.reader;

import android.content.Context;

public final class cM {
    private cQ a;
    private Context b;
    private String[] c = new String[20];

    public cM(Context paramContext, cQ paramcQ) {
        this.a = paramcQ;
        this.b = paramContext;
    }

    public final boolean a(String paramString) {
        float f1 = com.clilystudio.netbook.hpay100.a_Pack.a.H(this.b);
        float f2 = com.clilystudio.netbook.hpay100.a_Pack.a.a(this.b, "BFD_RANDOM_RATE", 2.0F);
        if (f2 == 2.0F) {
            f2 = (float) Math.random();
            com.clilystudio.netbook.hpay100.a_Pack.a.b(this.b, "BFD_RANDOM_RATE", f2);
        }
        if (f1 > f2) {
            com.a.a.a.a(this.b, "rec_C6613205_93B6_61A6_9FEC_180B70F91B94", com.clilystudio.netbook.hpay100.a_Pack.a.a(this.b, 20, paramString), new cN(this, paramString));
            return true;
        }
        new cO(this).b(new String[]{paramString});
        return false;
    }
}

