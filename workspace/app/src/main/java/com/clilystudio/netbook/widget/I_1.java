package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class I implements View$OnClickListener {

    private String a;
    private GameGiftItemView b;
    I(GameGiftItemView GameGiftItemView1, String String2) {
        b = GameGiftItemView1;
        a = String2;
    }

    public final void onClick(View View1) {
        GameGiftItemView.a(b, a);
    }
}
