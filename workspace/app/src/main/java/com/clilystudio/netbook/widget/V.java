package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class V implements View$OnClickListener {

    private com.clilystudio.netbook.view.a a;
    private GiftGameGiftButton b;
    V(GiftGameGiftButton GiftGameGiftButton1, com.clilystudio.netbook.view.a a2) {
        b = GiftGameGiftButton1;
        a = a2;
    }

    public final void onClick(View View1) {
        a.dismiss();
        GiftGameGiftButton.a(b);
    }
}
