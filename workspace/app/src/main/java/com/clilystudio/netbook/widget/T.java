package com.clilystudio.netbook.widget;

import android.view.View;

final class T implements View.OnClickListener {
    private /* synthetic */ GiftGameGameButton a;

    private T(GiftGameGameButton giftGameGameButton) {
        this.a = giftGameGameButton;
    }

    /* synthetic */ T(GiftGameGameButton giftGameGameButton, byte by) {
        this(giftGameGameButton);
    }

    @Override
    public final void onClick(View view) {
        this.a.d();
    }
}
