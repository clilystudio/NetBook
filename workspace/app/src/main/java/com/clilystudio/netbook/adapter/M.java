
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.User;

final class M implements View$OnClickListener {

    M(G G1, R R2, User User3)
    {
        c = G1;
        a = R2;
        b = User3;
    }

    private R a;
    private User b;
    private G c;

    public final void onClick(View View1)
    {
        G.a( c, a, b );
    }
}
