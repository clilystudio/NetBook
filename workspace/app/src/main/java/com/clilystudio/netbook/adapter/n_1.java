
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GiftGame;

final class n implements View$OnClickListener {

    n(GameGiftGroupAdapter GameGiftGroupAdapter1, GameGiftGroup GameGiftGroup2)
    {
        b = GameGiftGroupAdapter1;
        a = GameGiftGroup2;
    }

    private GameGiftGroup a;
    private GameGiftGroupAdapter b;

    public final void onClick(View View1)
    {
        GameGiftGroupAdapter.a( b, a.getGame() );
    }
}
