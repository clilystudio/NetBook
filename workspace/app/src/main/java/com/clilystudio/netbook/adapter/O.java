package com.clilystudio.netbook.adapter;

import android.content.DialogInterface;
import android.support.design.widget.am;

final class O
        implements DialogInterface.OnClickListener {
    private /* synthetic */ N a;

    O(N n) {
        this.a = n;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        S s = new S(this.a.c);
        String[] arrstring = new String[]{am.e().getToken(), this.a.b.get_id()};
        s.execute(arrstring);
        G.a(this.a.c, this.a.a.q);
        G.d(this.a.c, this.a.b);
    }
}
