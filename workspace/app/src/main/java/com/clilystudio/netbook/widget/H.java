
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class H implements View$OnClickListener {

    H(GameGiftItemView GameGiftItemView1, String String2)
    {
        b = GameGiftItemView1;
        a = String2;
    }

    private String a;
    private GameGiftItemView b;

    public final void onClick(View View1)
    {
        GameGiftItemView.a( b, a );
    }
}
