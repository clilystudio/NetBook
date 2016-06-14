package com.clilystudio.netbook.widget;

import android.view.View;

final class S implements View.OnClickListener {
    private /* synthetic */ GiftGameGameButton a;

    private S(GiftGameGameButton giftGameGameButton) {
        this.a = giftGameGameButton;
    }

    /* synthetic */ S(GiftGameGameButton giftGameGameButton, byte by) {
        this(giftGameGameButton);
    }

    @Override
    public final void onClick(View view) {
        this.a.f();
    }
}
