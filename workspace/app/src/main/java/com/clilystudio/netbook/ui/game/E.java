
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;

final class E implements View$OnClickListener {

    E(D D1, String String2)
    {
        b = D1;
        a = String2;
    }

    private String a;
    private D b;

    public final void onClick(View View1)
    {
        GameGiftListActivity.a( b.a, a );
    }
}
