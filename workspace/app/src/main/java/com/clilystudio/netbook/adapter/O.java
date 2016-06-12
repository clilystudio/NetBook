package com.clilystudio.netbook.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.support.design.widget.am;

final class O implements DialogInterface$OnClickListener {

    private N a;

    O(N N1) {
        a = N1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        S S3 = new S(a.c);
        String[] String_1darray4 = new String[2];

        String_1darray4[0] = am.e().getToken();
        String_1darray4[1] = a.b.get_id();
        S3.execute(String_1darray4);
        G.a(a.c, a.a.q);
        G.d(a.c, a.b);
    }
}
