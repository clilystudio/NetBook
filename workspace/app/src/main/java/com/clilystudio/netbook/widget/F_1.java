
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class F implements View$OnClickListener {

    F(GameGiftItemView GameGiftItemView1, com.clilystudio.netbook.view.a a2)
    {
        b = GameGiftItemView1;
        a = a2;
    }

    private com.clilystudio.netbook.view.a a;
    private GameGiftItemView b;

    public final void onClick(View View1)
    {
        a.dismiss();
        GameGiftItemView.a( b );
    }
}
