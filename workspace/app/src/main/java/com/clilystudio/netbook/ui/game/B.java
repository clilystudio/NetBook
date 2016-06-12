
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.GameGift;

final class B implements View$OnClickListener {

    B(y y1, GameGift GameGift2)
    {
        b = y1;
        a = GameGift2;
    }

    private GameGift a;
    private y b;

    public final void onClick(View View1)
    {
        GameGiftListActivity.a( b.a, a );
        b.a.b();
    }
}
