
package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class am implements View$OnClickListener {

    am(al al1, String String2)
    {
        b = al1;
        a = String2;
    }

    private String a;
    private al b;

    public final void onClick(View View1)
    {
        b.k.a = true;
        UGCMainActivity.a( b.k.c, a );
        b.k.b( 0 );
    }
}
