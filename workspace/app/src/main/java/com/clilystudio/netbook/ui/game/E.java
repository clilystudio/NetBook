package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View$OnClickListener;

final class E implements View$OnClickListener {

    private String a;
    private D b;
    E(D D1, String String2) {
        b = D1;
        a = String2;
    }

    public final void onClick(View View1) {
        GameGiftListActivity.a(b.a, a);
    }
}
