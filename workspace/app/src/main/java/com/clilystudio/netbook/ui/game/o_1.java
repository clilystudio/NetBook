
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;

final class o implements View$OnClickListener {

    o(n n1, View View2, String String3)
    {
        c = n1;
        a = View2;
        b = String3;
    }

    private View a;
    private String b;
    private n c;

    public final void onClick(View View1)
    {
        GameDetailActivity.a( c.a, a, b );
    }
}
