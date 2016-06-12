
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;

final class w implements View$OnClickListener {

    w(GameGiftListActivity GameGiftListActivity1, com.clilystudio.netbook.view.a a2)
    {
        b = GameGiftListActivity1;
        a = a2;
    }

    private com.clilystudio.netbook.view.a a;
    private GameGiftListActivity b;

    public final void onClick(View View1)
    {
        a.dismiss();
        GameGiftListActivity.a( b );
    }
}
