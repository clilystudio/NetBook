package com.clilystudio.netbook.adapter;

import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

final class K implements View$OnClickListener {

    private Intent a;
    private G b;
    K(G G1, Intent Intent2) {
        b = G1;
        a = Intent2;
    }

    public final void onClick(View View1) {
        G.a(b).startActivity(a);
    }
}
