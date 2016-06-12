
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class E implements View$OnClickListener {

    E(GameGiftItemView GameGiftItemView1)
    {
        a = GameGiftItemView1;
    }

    private GameGiftItemView a;

    public final void onClick(View View1)
    {
        a.a();
    }
}
