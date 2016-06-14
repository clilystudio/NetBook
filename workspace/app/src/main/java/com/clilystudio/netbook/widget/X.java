package com.clilystudio.netbook.widget;

import android.view.View;

final class X implements View.OnClickListener {
    private /* synthetic */ GiftGameGiftButton a;

    private X(GiftGameGiftButton giftGameGiftButton) {
        this.a = giftGameGiftButton;
    }

    /* synthetic */ X(GiftGameGiftButton giftGameGiftButton, byte by) {
        this(giftGameGiftButton);
    }

    @Override
    public final void onClick(View view) {
        this.a.a();
    }
}
