
package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.GameGift;

final class z implements View$OnClickListener {

    z(y y1, GameGift GameGift2, String String3)
    {
        c = y1;
        a = GameGift2;
        b = String3;
    }

    private GameGift a;
    private String b;
    private y c;

    public final void onClick(View View1)
    {
        GameGiftListActivity.a( c.a, a );
        GameGiftListActivity.a( c.a, b );
    }
}
