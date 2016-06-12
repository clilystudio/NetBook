package com.clilystudio.netbook.umeng.a;

import u.aly.cD;

public final class d extends g {

    private long b;
    private cD c;
    private long a = 10000L;
    public d(cD cD1, long long2) {
        c = cD1;
        if (long2 < a)
            long2 = a;
        b = long2;
    }

    public final boolean a(boolean boolean1) {
        if (System.currentTimeMillis() - c.b >= b)
            return true;
        else
            return false;
    }
}
