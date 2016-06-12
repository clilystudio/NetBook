package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class X implements View$OnClickListener {

    private GiftGameGiftButton a;

    X(GiftGameGiftButton GiftGameGiftButton1, byte byte2) {
        this(GiftGameGiftButton1);
    }

    private X(GiftGameGiftButton GiftGameGiftButton1) {
        a = GiftGameGiftButton1;
    }

    public final void onClick(View View1) {
        a.a();
    }
}
