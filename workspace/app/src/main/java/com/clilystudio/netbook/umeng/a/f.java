
package com.clilystudio.netbook.umeng.a;

import u.aly.cD;

public final class f extends g {

    public f(cD cD1)
    {
        b = cD1;
    }

    private cD b;
    private long a = 86400000L;

    public final boolean a(boolean boolean1)
    {
        if( System.currentTimeMillis() - b.b >= a )
            return true;
        else
            return false;
    }
}
